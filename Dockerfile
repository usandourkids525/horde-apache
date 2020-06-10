FROM docker.pkg.github.com/maintaina-com/horde-composer-docker/horde-composer-docker:latest

RUN zypper --non-interactive install --no-confirm apache2 apache2-mod_php7 \
    && zypper clean -a \
    && a2enmod mod_php7 \
    && a2enmod rewrite

COPY horde-vhost.conf /etc/apache2/vhosts.d/

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
