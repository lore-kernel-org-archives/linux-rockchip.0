Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FCE606A31C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2026 06:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lA72KWFe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm1 header.b=nyj/NjMM;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=mop2sp4r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WxwO7wk/KgUn+Ljg1TfUe4qiQXQS3mQGoD9G+4DrDbs=; b=lA72KWFeiuomZCiClGel8ABHQL
	uL8cAdP7uYqPdHnQVB5wj9+qy0qLcIEerCUn+l1FSOxrZ4yAtE+5ZZYu5N4+X3pb65XHW5PbWF5x0
	NvAOqFlostM0wgW/t/5lEdqtkshisvDI8ahaetJm6mPc4HQOAfkFATl7KwHdbSbaMMtpIFVFL3z1D
	NxIsezbmu0enym74hZU9JpvqepFEq8X9L++LlCvI/cutZeobjQUG0E+4uk8Zosl6gYpTfqyXr1bOr
	FmtTzNQX5z8pGJkoljZSmKNSsHd5wbtgotBFV913ZsO9lTu1W5dZYAxfqrCtOqi04Q0aIT8PsAKnf
	jYQPQeWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPwsd-0000000FjCU-2UEa;
	Sun, 08 Nov 2026 06:59:55 +0000
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPwsa-0000000FjAg-3dtt
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Nov 2026 06:59:54 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfout.stl.internal (Postfix) with ESMTP id D51EA1D000F6
	for <linux-rockchip@lists.infradead.org>; Sun,  8 Nov 2026 01:59:51 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Sun, 08 Nov 2026 01:59:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1794121187; x=
	1794207587; bh=EfQbylsCpIAnslSqVxcBOCtEodurG+HUimJi3ylSZas=; b=n
	yj/NjMMexDg+rlV2fUiql+lwYWIfnNa8sqpiM7W4Z9SC4tY5t6zSdTRdLSmvKdbR
	HTRZUuJscZk1lAbbPW8qPjFwt8BIvGmJRuIVzAFrP5jcVfc7uJocXQtpVzk3IEhK
	NkDww1LgRMMKPwCx48waCQvARBizy8EYSk5uYVqcSGrXg7Evz0+65kp3hUOz+Raj
	O7fOkXi79Sr64wS+/pcY4iOpcX5FwG+8dfPIPVfvuhSTbQwf5GUXhtsLXw8Q3+bF
	wsoH8B3xnl2VXnthK5rNu1IlytuR+Zgj0JcAYeqOqsP+zX1o+hl4iKmaOxeP1rnj
	xMV6+rDZiBQ4/qjOOhv3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1794121187; x=1794207587; bh=E
	fQbylsCpIAnslSqVxcBOCtEodurG+HUimJi3ylSZas=; b=mop2sp4rvIQ9X7YQ9
	0RlubFjZzPyYf1YKy6iPIOLR9TsknTeruwkfFGEEFTbKop8uhIUjyDKkpRFlVTFo
	kZAkIflE2So4tri2zw2OedyxT2YYlMRTdJIyNTAJzlINg6b59udlahYBp6unyMDT
	GWKDavtrxUZQrc7XKy573IoOwk3kGZp6py63YPi8aYc/to7qpwEnioH2KMCd5pBc
	7qRsdDgYAKoez5UcXFwRhIt2PghWBk1/+Hq0HHojr6xcEIOzuXqimkMxQ5Y1zYLs
	BfyqXeBv+jH53algvrPu0z1tzaetgziq+lvBQnKHtp3l18iGgeUSW02tujr+XL/m
	QWlgg==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1794121187; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm1:rsa-sha256:EHtDaTwmRPYvGEfk1V49lVT0RAqNfpVhuid35bXcC3xBgQi
	4rSHosM5aXXmusNNJiA+ZuQIiv1fcirXOdBv+QaqJEt+5+8Me/VwCMzm6ZpVHsyz
	CKf9X63KcDwGYMu6TQmiqCm8ljaJoF+Nhr7UvarzGBdtScT9M+1H6h005ToqCuJP
	0BpJL6jgbupttItai+BG4KJUYdA0HhicYzafr0faGB+lRy6CvHHB3Dau05yElufo
	pA/PDML6U/sLVwrZg6pl7CS3tGNcBqi/D5eGzxAanjX5PeBUw+rM7ou53achA5zp
	TNdj/AtSIX8+CStcxHpbQDusKbh5dUvei5t+z+g==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=11;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:i0uMcOJV4Txg3uXy8svWGAM+fGmcjkhIe099c7B65Vw=:PFJmZpPQ7hOYq6GyLPKUjFxHooG32hWaNu/MYQEiFdw=;
X-ME-Sender: <xms:4x3wasEElednTwhBg53F73pvHctZugiGaoVk1D4VKxGqnlB_Z2L61A>
    <xme:4x3wahe3gkc84wPIjapIbE8Xv71bWGPhN7GSSu2KmO2bqIirgd2A1z2zQo8AitQGI
    dF7OBM5Z_lU2eX6dEWSgIJaPLAPHYx9yRUb1GzDoJKFbpBoSHz5Vm9_>
X-ME-Received: <xmr:4x3wava6r1t9OqZ8JsqfspvhwZFlXzRnspVGs63b_2exYwuhdbyZKO_ywBRMgoD_YaaKTjW9>
X-ME-Proxy-Cause: dmFkZTFKhclCCJN9i5LFQp5fvn9DylL5PDR95+qcmUDEkBDvAaUlhVhO6JW1PTcA0oiilr
    afxU+kS37MwfkRVrV2sLhNS1OkBSH9hrpfUYkvEeAEfTx8oUhC1lvQdEqsrvfO12L2kPDm
    Y90xvEv61R5vWsABT3XVmqKcWsSTBPoQRHs33ySAWpN7mh8mIX7nfmpu6Q5St0DdZLVl6o
    GJpMHUC7TjUVqLMHfqfKk9SHn10f5lL6CdG6YeehrsosttZtbM1aNiFk46XYC+svmJcMBn
    4w1I3sJZaXrv8SSndHCWUOH7cbPZHBY65Sr1oZjnZZRxSV2wTTFO+3xU/Lmvhk4YCMlhrD
    d8VrwNk0rqjoxg0rgtVyiUIqLKvl1cfJCmGEQpGCCSL22Di3houcbmHV2KWk9Gy7CGyQFw
    LScFVe2L9bN00I9vTKwsVZjgHcuSIOcibMMaxFmdry5AP9zy5JqvB2t0A4ATAW9JhssOM6
    mgVMRSuTrFNRpqV8HyuLwsjFvVM5dgsfwsFu2n1yWX5cngVOA0D7sKLl7Kg6e2Js6RvUzi
    4jsiXM3XQ+Q4EbiddfEFl+Odx/6wkw+wPdtCPrbFf3rq5wIa0nWZ4KWoDn0Z4IbwuLFiyE
    Y7vGCUjrDzAcKXrXMFlDMtOUbixTZ/WK1uZn0idCqXESM0vCdcxG+tym3MYw
X-ME-Proxy: <xmx:4x3watIDd-7W-wCokvJaM3siszwMwqx_-aW02aVJJGeYYrja-HSrkQ>
    <xmx:4x3wamhDM260Mks_j3mCba8sCckeATFyz0cbF2gZaTDBw66k0vpm-g>
    <xmx:4x3wahsYJSPIUFBx2VTytSbRBPlrTHMdaJSBu_rwaWZ9zBVNVb6rcQ>
    <xmx:4x3waiEIIo8SXyfzC0Hmkoi1CWERb-FOJHofGcgpasGCJ73Uafv-jw>
    <xmx:4x3wavPkeJxdkq8E2gmNddFzhgkefGWv_tn1sVw4BJfejKmD9RQuJ0qF>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Nov 2026 01:59:39 -0500 (EST)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com
Cc: royalnet026@gmail.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	sidong.yang@furiosa.ai,
	u.kleine-koenig@baylibre.com,
	chaoyi.chen@rock-chips.com,
	shawn.lin@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	leonard@lausen.nl,
	jeff.hugo@oss.qualcomm.com,
	rfoss@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: [PATCH v16 01/16] accel/rocket: request the core clocks by name
Date: Sun,  8 Nov 2026 19:59:02 +1300
Message-ID: <20261108065917.135194-2-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261108065917.135194-1-gahing@gahingwoo.com>
References: <20261108065917.135194-1-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_225952_951112_02158C79 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Igor Paunovic <royalnet026@gmail.com>

rocket_core_init() never sets the .id of the clocks, so all four are
requested with a NULL name and each one resolves to the first clock in the
DT, aclk.

As a result aclk is taken and enabled four times, while hclk, pclk and the
NPU compute clock are never enabled by the driver. It only works today
because the power-domain driver enables those clocks for it.

Give the four clocks their names, in the order the binding defines: aclk,
hclk, npu and pclk.

With that, a DT that lacks any of these clock-names fails probe with
-ENOENT instead of running on the wrong clock.

Fixes: ed98261b4168 ("accel/rocket: Add a new driver for Rockchip's NPU")
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Tested-by: Sidong Yang <sidong.yang@furiosa.ai>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS, NanoPC-T6 Plus
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Reviewed-by: Jiaxing Hu <gahing@gahingwoo.com>
[Jiaxing: shortened the commit message]
Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/accel/rocket/rocket_core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
index b3b2fa9ba645..5dd260bacbff 100644
--- a/drivers/accel/rocket/rocket_core.c
+++ b/drivers/accel/rocket/rocket_core.c
@@ -28,6 +28,10 @@ int rocket_core_init(struct rocket_core *core)
 	if (err)
 		return dev_err_probe(dev, err, "failed to get resets for core %d\n", core->index);
 
+	core->clks[0].id = "aclk";
+	core->clks[1].id = "hclk";
+	core->clks[2].id = "npu";
+	core->clks[3].id = "pclk";
 	err = devm_clk_bulk_get(dev, ARRAY_SIZE(core->clks), core->clks);
 	if (err)
 		return dev_err_probe(dev, err, "failed to get clocks for core %d\n", core->index);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
