From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] regmap: fix up the regmap lock error
Date: Thu, 22 Sep 2016 11:23:09 +0100
Message-ID: <20160922102309.GI7994@sirena.org.uk>
References: <1474539465-12487-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="/GPgYEyhnw15BExa"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1474539465-12487-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: nikita.yoush@cogentembedded.com, cphealy@gmail.com, huangtao@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


--/GPgYEyhnw15BExa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 22, 2016 at 06:17:45PM +0800, Elaine Zhang wrote:

> Regmap lock is taken in regmap_update_bits_base() and then
> regcache_drop_region() tries to take it again.
> which added in commit 815806e39bf6
> ("regmap: drop cache if the bus transfer error")

Someone already sent a change for this.

> Backtrace:
> [<8068ab7c>] (__schedule) from [<8068b1c4>] (schedule+0xb8/0xd0)
> [<8068b10c>] (schedule) from [<8068b61c>] (schedule_preempt_disabled+0x20/0x2c)

Please think hard before including complete backtraces in upstream
reports, they are very large and contain almost no useful information
relative to their size so often obscure the relevant content in your
message. If part of the backtrace is usefully illustrative then it's
usually better to pull out the relevant sections.

--/GPgYEyhnw15BExa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX47EMAAoJECTWi3JdVIfQPUUH/ie+E7JVU1fe9SlfGietlJpH
MPVYrJPWoqeLqs9FHwhAUij1ChhkqFuMPIqPQWRbdEA1xhS+9CW4v33ghlDtS0c+
DP0GF/aY1vmY6eYBaJLcs32WHepHvQwVgf8qCB+gLqcjrtwkSpGiiEX4g95lcOcw
Wb4NpjZis3cYEcYOCB/K0jzlqN9yFUsHf4Dq2D0zNsV/AKo91yHZExQAQO5lDl6Q
fl1X8BjhlSIfX3C7j7klK4tTcRFbII9V8JOHlScAMl8l3BmbRu9Uv0X+pZF7Z5nw
YUoJAyoL4UWvsjzGEyIpkQt09R+m3rVDzKyjwZINl806AdzQLtWPdGrOodflFZg=
=nlHD
-----END PGP SIGNATURE-----

--/GPgYEyhnw15BExa--
