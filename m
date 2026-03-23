Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC537F483E7
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 19:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qdVBQUka8cieiIewXXzyQkiPzQxQOufiFWeQsL6C87Q=; b=T66afZ3BC88ZSAqBVgCivsOWRq
	uL4KD8UL/joryzR5zclpiKKQQZNJasxLF5wfTd1FMiOpTq6ugcjDcBMZ7CA8VQbvW4JIKq62Y1Qrk
	tbAdhwU0lweT+aTBDDx60yZxeHkjOTgr1PA3WL2piM+S76DjB3WDp5JOft+vvqgWYwMtP0iLQe/Xq
	QQHShZ+gCzi8rQTgAVtkfIfeWqQ96A7c0kVAg3VIScICEF3tvQo5v2Kf0xNNFKTzJkJ0tkKh0NxYE
	K8ZnUrrkJ8Irnl7Yb3KETXn7oUCUx7rBoPHBnzMVGvraQ9CR7EYTYE0bQcwTn10O41umc0q8yMj3A
	KL8fET8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4l8r-0000000HT9u-1shH;
	Mon, 23 Mar 2026 19:40:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4l8o-0000000HT8j-1Ztv;
	Mon, 23 Mar 2026 19:40:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9129C41A80;
	Mon, 23 Mar 2026 19:40:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEFB0C4CEF7;
	Mon, 23 Mar 2026 19:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774294845;
	bh=s5Dj5zKJh4gp3uUOjYLtfn3JflufXLOVfns78ZDwhdk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vEMCKOmPcjK69i/jaUJP9/1/1KIAbdAI/jyz5eIeq2Ohp4payqtagKhe6K94cdjnl
	 5MBDjmSvGYyCJotBDvdW6XLgo+cmZZs6cZ5OLmPZEuBkpfCdFb1rb8ATZbXduZJUt4
	 p2ffpSiffFiGFI0Ksg3BGSPCJr6BsIZGtAbUWb1WxNllsARiGheg9hToEDNXSRmhrd
	 IqgU9aEyZB541ntyk7G5cpfYEBSt0nByaUPCsExkKaLQgDaah/m4OOxIMdBONBJQUC
	 KvWM9KxJA46vN+9A65rXrR/9XNbl8Tnx21lThUMFMD/OmiV1B5lG3bdBS47rMu2Wel
	 e7aptFNOKQhrw==
Date: Mon, 23 Mar 2026 19:40:39 +0000
From: Mark Brown <broonie@kernel.org>
To: Pei Xiao <xiaopei01@kylinos.cn>
Cc: linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	openbmc@lists.ozlabs.org, linux-rockchip@lists.infradead.org,
	linux-riscv@lists.infradead.org, linux-mediatek@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com, Frank.Li@nxp.com,
	amelie.delaunay@foss.st.com
Subject: Re: [PATCH v5 04/17] spi: img-spfi: Simplify clock handling with
 devm_clk_get_enabled()
Message-ID: <d7c9ee00-7988-49ac-a687-6ca7d262cb16@sirena.org.uk>
References: <cover.1773885292.git.xiaopei01@kylinos.cn>
 <c6a5cf59294d754389dfdd8837b596c52976e198.1773885292.git.xiaopei01@kylinos.cn>
MIME-Version: 1.0
In-Reply-To: <c6a5cf59294d754389dfdd8837b596c52976e198.1773885292.git.xiaopei01@kylinos.cn>
X-Cookie: The only perfect science is hind-sight.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_124046_431978_9D0E239C 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============5973976624802925705=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5973976624802925705==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KdBK98FaLbNlOSZu"
Content-Disposition: inline


--KdBK98FaLbNlOSZu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 19, 2026 at 10:04:00AM +0800, Pei Xiao wrote:
> Replace devm_clk_get() followed by clk_prepare_enable() with
> devm_clk_get_enabled() for both "sys" and "spfi" clocks. This reduces
> boilerplate code and error handling, as the managed API automatically
> disables the clocks when the device is removed or if probe fails.

This is another driver using runtime PM for the clocks.

--KdBK98FaLbNlOSZu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnBlzcACgkQJNaLcl1U
h9B5dQf/cDSlUe0d8iJCQEpPuMR/jsyb8aVj7byeVgt+hGIzfkjPSRVRTt+i7Gl0
wXIJ8APnrLN7uOlNnqT39tvo7HLzjsYIzLRX2WygN63gcD/q6T6lGFOIpt7FEn/t
vyLYoHwhVo79iHZXzcFRCn50JaM++S4EHfU50rEL3hPBwdgwOMoC2UsL4Ll7Ov6c
Bf/wC7bp3b6Vk++sQpV51qMbTJ8Ffwt5fOnJKoJUH7YaQYnBSNwZB7vSYMaR+phg
ehdwZ/QIrfA0QAE8znQCaYpph+aMH/PqlE4Xd4hhy0YyesowQfbqOIq7tPari9Ax
2bIRE8rXTuUy5OmJDPaGdxsIpe91lw==
=BUPS
-----END PGP SIGNATURE-----

--KdBK98FaLbNlOSZu--


--===============5973976624802925705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5973976624802925705==--

