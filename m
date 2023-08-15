Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 558BEC0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 14:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x1fU1z+Av/bJwg4KYL2QBFjUJuYnQqFy3QMJ+T01pi0=; b=RquT6+b4gB69djZrOoYoM5cEUd
	YJ+5bOWIm4U2bnV99NnkPkqYCaGPydLcfQajAq3q9NgLu9ojHQmd7cIjsW9vEC/eVBi55USY8K8jW
	ENFmJRQhw6eeD9Y7DGo7Nj9JIWwfCelPtm3JoN0yQcK/JzwCHB3sqydwWbmF/HWMBeB/UH4rkySAa
	/74WYYo7RVnIIC2RuttvjHz8TXxFWOI2et7Lp7Nvdj3Hf6iyHBitd/Dwq/DMc/knoo7OlEwcmYkHL
	37WI6T2OQuhiUly+NJgp9cbAEflw3BV5UlsdXHVi9/1i/xnHgt1QN4OhR4DJejk5fu58WUdeaAO8M
	bKlN86Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVukm-001k1g-33;
	Tue, 15 Aug 2023 14:10:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVukk-001k0X-0C;
	Tue, 15 Aug 2023 14:10:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A60AF649F2;
	Tue, 15 Aug 2023 14:10:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9358C433C7;
	Tue, 15 Aug 2023 14:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692108632;
	bh=n5ZUySZEZiqsQq5qoUoRbN2WfkDeGQmpgZO6gsSVgNU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pvMT8JcnQZj7OZmeLN4OT/RqwDIhHXrGoPSW8qC8zzDbSsyIch1Rv8GKkiGY7DkPR
	 cTIoVmCUU/5zjeeHADYvvuuQj08CU4VD2TJzinH8qRNYMwz5N5GURwwZOEEEHZvLAF
	 yhp3rpbsL8tMQsulZwbJ0sENQc81fWY7bx0Akhhru9ySYSuq6ewC9rTw4fc7MN6ba4
	 X2wCXy4KqRNvCDqJib5ufDckzKOScVjVxRqL79YIvbS6bRSYsVkHm0ojoRA8he0zqs
	 r2FeqkPyvPqJ6kl8TLFwdtJJ/1U0z67s6fDCkmZ3ZfchU/GpsrQVzk+pxlx59NNXRx
	 OZAGmxg0PGNqw==
Date: Tue, 15 Aug 2023 15:10:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>, alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org, patches@opensource.cirrus.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, llvm@lists.linux.dev,
	Andi Shyti <andi.shyti@kernel.org>
Subject: Re: [PATCH 1/4] ASoC: aw88261: Fix unitialized ret of
 aw88261_reg_update()
Message-ID: <7b35b3b6-7eab-4652-9a16-851a060350bd@sirena.org.uk>
References: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
X-Cookie: Darth Vader sleeps with a Teddywookie.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_071034_168534_0252BF37 
X-CRM114-Status: GOOD (  13.85  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5457996466436810014=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5457996466436810014==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vj9n6GWKkaE+J3Ue"
Content-Disposition: inline


--vj9n6GWKkaE+J3Ue
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 10, 2023 at 12:47:43PM +0200, Krzysztof Kozlowski wrote:
> There is a branch in if() clause where aw88261_reg_update() could return
> uninitialized value.  Pounted out by W=1 clang build:

This series appears to have two copies of every patch which *look*
similar but I'm not 100% sure if that's the case or in general what's
going on - could you please resend a clean copy, it's probably easier
than figuring it out?

--vj9n6GWKkaE+J3Ue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmTbh1AACgkQJNaLcl1U
h9Db2wgAhKl6awfKbl76YkckQHA0qEwrCC3ehM9pJoMcPKMh3Sc9f3FMZrk4XmRg
sPzgcu1JgnUD/G3svs82wur5Kocs8gpAxTiBPonVpko0iILOA6IcELf8Rj3sXVOL
jUS4Qz89yi5zhrTcEQwZm+9FfrXwmeeRNef1KnNHEbG+24KUPVWcRxu/mWfvTPk5
WFL5fgeccSniy5L8pWNC464fRdUzoFSLNxR7/SXtiFjoGbXGCDkRsGNAiMWskO6h
MuFOlNeK8dvtwoVNm06CEk1MWftPzkmRQn6WHb1YjsWU4akwwFXyDRLeTVAfmQCU
lGuevRFzUsBb2FxR8FJyuJOpeRpAfQ==
=8N2T
-----END PGP SIGNATURE-----

--vj9n6GWKkaE+J3Ue--


--===============5457996466436810014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5457996466436810014==--

