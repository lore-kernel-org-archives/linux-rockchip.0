Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951EC606A326
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2026 07:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Xn5pK70h;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm1 header.b=Ex2KG1EW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=W80kNeCc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1Kf4rXSe7NYwfF1t+EqlNqhRFiHsxL2mvlf18y+Xcks=; b=Xn5pK70hOQDBeQeKqLvokl7T7D
	2R3TVP/VyHXW/fYx3I6a3rNJnGSxD1ZZ0ys9R0HEfbwiK9RNqUWo9ErT0sesDSMcFGPkrDLSo3BcQ
	50eQcvljTcSfKueETBXk5XeYWbjxOfTkD5mjOVOWhB/v+X+kPziY4nnSmAIm68LOlf9zAMIS36vLs
	rXua82wr/zbBbm39MjGZwQ+V3FHJ/o260o9lu7BxsnuIrV+KKzxNewxVsxysPUoZyp+jB94GXmqK7
	t/kHxb3wuz8+fCZH1HJKSTdzljz0FUt4djExkLDDoPIrH+wUDtAUIrWiZsRRT101PtlYDBhRnaufZ
	JgleUOEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPwuG-0000000FkBN-2PwL;
	Sun, 08 Nov 2026 07:01:36 +0000
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPwuE-0000000FkAB-2WWM
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Nov 2026 07:01:35 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailfout.stl.internal (Postfix) with ESMTP id 029811D0016E
	for <linux-rockchip@lists.infradead.org>; Sun,  8 Nov 2026 02:01:33 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-12.internal (MEProxy); Sun, 08 Nov 2026 02:01:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1794121289; x=
	1794207689; bh=D7jeB8Sl0+zRQHKbuwwkxQBuT+GoW8QxqW0+bnG9GYg=; b=E
	x2KG1EWXhcfdOhlAzkHAY+Zs/TRRZK/L8I2Kvul2EHD+hy2kf179Dv58QWtWRfS5
	J2sTEykS8ER280qtjelThxyo3WbuyiwuDp+go0I67WWxU/4PmDchUeSAA7+p5LgO
	jh6VbBrSQFcZPecHwaeU9WtlGx9eJQfqdJnWgj1w9mcBqMqySCe4SsZdpjIIjudz
	56O1JsvtBBoUIY4vBh42piVN7czjJxl3TO0IMH4NgGHhl1ETS3HzKqPMBA2b7k6N
	ztOFIdJE+4dMJo1yVlpfD8KLq017xrQkj2CORRyxQu7cbolPU3eDut+7qfUvo1PF
	748B5srLWqoqw6RSHPjeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1794121289; x=1794207689; bh=D
	7jeB8Sl0+zRQHKbuwwkxQBuT+GoW8QxqW0+bnG9GYg=; b=W80kNeCcZbrjk89+u
	USwBA0gCjRQPWdExlgt6cPWY8IV8K0BpLmGOBv/F1pjBjqDSKU/rtb+RZaMTL59K
	IcQwaPKzkE3jPwhZMn7F00SPhF6cBWv5gl9bc0qrA4gkA2VdL+4gDVJMYA/C7Cm9
	/uy2e7ssPKqwv97XdTM2WTa0voPlDQR5zoNuseyusIbHi3h5dypUQjfBEwYBJQSx
	KBqhebhkkAhECz36/7KqQRvBU0T06OOmDoFdyt1euDFavDpE1HlloP0gk/uKa2cK
	U+gb+ErbAh686HykyKVhj80rsaAFgrhYZRZSijfCeLJ3ASt52+Wu+gdFoEMM+rtp
	6B9tQ==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1794121289; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm1:rsa-sha256:pDyeDmQ2qimV+az9nODKaXtSX9pY60iA/Q9aJgd0pjYRuj6
	vRobNtG2Lqo/6qBHa1FaLZC3KK1G+uCJYTGVCh58kvRYsUL6lH4zeldO+qA3zKCt
	CqvQZRbsKx95o/GIKd9XZh8aMBj0ov9szB7hwwzvnKUqQp9b71O2LlumxmEfikqW
	Wv9gMQ1Qq3b1xoRi0I9ojxUntM0etsgh0e5jWN3Xa00JwKfnPwmQWse1/Ygd630F
	5ByijSjoTtbO5cysC+prN5s+SKXvFsN7hrvIa6bZK40mrWds8coWPd1MPFTd+49i
	qkAG+lAjctmZQS2Wd0IVCSeE+YUDVLM63qWHSZQ==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=11;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:1TpqjnqoHTs38drxSrprZmG20MJBnxs7rjrMy5tqrgs=:gwgkUKvPnY9Iy7hnavFA8AwFt8XMqTb7rh7Dag69Lnk=;
X-ME-Sender: <xms:SR7wartnSvHzU_0WEBYPug0qnUmuYsp01Aky41OJbFE4hpOXxXKp2A>
    <xme:SR7wakGvDgL-KhhP8BL5sedTZizyYJnYE-X-OYVmguV8XMoMn4aWkzsJ7ao9F8EOp
    JvHIuKLkUbgfBj1JhcQXjU7WAsP-EAPP9-ZhVPwOqtcdKztCALhg5ow>
X-ME-Received: <xmr:SR7wap9QPTzMDDvrbgzE8U_kgMW5R7VBb8FD_HBrNppnzCoDQELagagQNBZcNV3LM9weaHEF>
X-ME-Proxy-Cause: dmFkZTGvkKxq58o0YNxgTMh3d5jffRDgbsao96ujwv1USJioDVitFBsUz9Y9ALvBwrcFLj
    kqFzjA/JbfCca892DNnBgXlAIz/Xxro/f25InzU0DQtumgiyjJEPdVMs+6+yx7WUBJP/YG
    kYssWJdG03gLhVAFs6x0tZImyIVP25VaCkHrJsYEtQ25KNqyMNodRMMcDwL/ewfvSbUzXE
    lOpl8VaSDqhAlCB8LXVrtWvLZj7RTDhzgoNxVWjbpoiYOFTXCNgIrASZtbjWqAIunuzq8y
    RnT1o8a16XcyUiVZM+A24xqdJvaR2RIn2a0sf4Iz44fGqtMHdPP4kkbz91+OyZlEgQJ5fy
    b1zlLKi9PFjWSazuiUAe5/xK2+2z2qA9VwbcrB6uYqZ9AFo2Mc+F1O4Rw+qyOhRipqHPeF
    yZW9jprPtMnxoRGCjHCR3fm3gTNI4gY6bgI5fM2FXTU01zem9+uUEcmQS0ZiWoUfq1FAAr
    WkvG1By9DuB4+pbFEis+7d9xU3cWZZdsBnjBABI4KSBMQoinZcOuSqRo3y30iMk3crxmLi
    gpqjAn6z5ApWUhB4GU7pGQ2jZGBqwKfGk+HVgaCPLWCJGvon7Ye1l9JOWaxpsdSmI4m1bH
    MjQNUBDZikbowIp6oru0NuJ04PpiiB1uigPG1Jh4GBNoa0/5Ph6Br9O7tlYA
X-ME-Proxy: <xmx:SR7wakiTPpWICuiC1enYxECmz5fM4DGoQMEqlBkFVFf0pyK-3x8ULg>
    <xmx:SR7wav_75NeYNPKLfbSFzpjH-J4MD_rvmGqoeXiFTpGjq5osAzLsww>
    <xmx:SR7wagQx_C_kfpnTfN5ipQodUarUxwsVLpQt5Ib46nEP2L_7FX8kfw>
    <xmx:SR7waif6yskKax3BVa6A_M91sIpkwP0Q2JVx3p51ZP7zzjPtvcLG7Q>
    <xmx:SR7wanMtSMoVekfEuAWHAf6qyViu2KLeOW45Glinq0WajS3DrXQ6xWDk>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Nov 2026 02:01:19 -0500 (EST)
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
	Jiaxing Hu <gahing@gahingwoo.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v16 07/16] dt-bindings: power: rockchip: allow resets in a power domain node
Date: Sun,  8 Nov 2026 19:59:08 +1300
Message-ID: <20261108065917.135194-8-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261108065917.135194-1-gahing@gahingwoo.com>
References: <20261108065917.135194-1-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_230134_680869_E8A5C70A 
X-CRM114-Status: UNSURE (   9.97  )
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

Some power domains need a reset after they are powered on before the
hardware can be accessed.

The RK3576 NPU power domains are like this: without the reset, the first
access to the hardware after power-on can raise an SError.

Allow a resets property in power domain nodes to describe this.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/power/rockchip,power-controller.yaml         | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index b41db576f95d..83741f048716 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -136,6 +136,13 @@ $defs:
           A number of phandles to clocks that need to be enabled
           while power domain switches state.
 
+      resets:
+        maxItems: 1
+        description:
+          A phandle to a reset that needs to be cycled once the power domain has
+          been switched on, for domains whose logic does not come up in a usable
+          state by itself.
+
       domain-supply:
         description: domain regulator supply.
 
@@ -216,6 +223,7 @@ examples:
                     reg = <RK3399_PD_IEP>;
                     clocks = <&cru ACLK_IEP>,
                              <&cru HCLK_IEP>;
+                    resets = <&cru SRST_A_IEP>;
                     pm_qos = <&qos_iep>;
                     #power-domain-cells = <0>;
                 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
