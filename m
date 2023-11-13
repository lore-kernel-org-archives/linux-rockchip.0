Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E4B0C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Nov 2023 12:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fl1EqNc1LrQSQzhMz/fBO+Rq5mL+k7xckq3DRI2jcII=; b=ZNSeovI6tiGXjh
	jeNd2XtBjq73RMC+ONcQEXgqkXOT9GkgYfQ3dBNIxM0sRr05RYqn2qbk6hu7rK2lWYbIXwe1kmDRs
	FxPRDlZDhgxVgRmsMjVvCUD6KOZnPg3TOmAo5fHsD7uRTLF5sqn8djqt8KhaeHJdIwDpkpejpxlAB
	WCn93m29QrF/MJJSrKJQc8VUgvxToc/MgHjRIqZ+hGyhqPxA9ftt0Enj2HYtQ1WbyKHZhIWvhk/ST
	bMkeNwp+nZ3Ot2YoCkq+53tFii+Ff8cPiwa9hK+3CQozweK16rI+YTEEusjjIQQ+UdrRI5BtK7v+R
	j6Gr8SJjxdwaoMszTzWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2VjS-00Dv4X-0c;
	Mon, 13 Nov 2023 12:07:58 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2VjO-00Dv2Z-2M;
	Mon, 13 Nov 2023 12:07:56 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 207CF5C0163;
	Mon, 13 Nov 2023 07:07:54 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Mon, 13 Nov 2023 07:07:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699877274; x=
	1699963674; bh=cfmKWNvi9ySzOZPovC2dZMwlGmDOYANqHBVeqSwUZ00=; b=T
	yGjYT0y4TH3JKxE7wobbcM1k6GDfZRjL1iNgLq2gE78S8WtPwhKVbVEd//7ZRbum
	CSCTavJMQPZIR1LEa+vqJ1WX7j6vpo491EBzVaFkhEa7VTcWGQTeZcYqh21e7wMA
	9TG928SA4tMJlMaNEv+5Xh2Cyrf/VdBpcr9htvZBl9+5RITjJ6a+XUyXmMVH5A9u
	VCDPbJwRE1ZgXgqC7Rz6xb3RpnK5EOKmnQUnRqCUefVKylIwK62GmqY9x/+0MjEz
	IFDxq3pL+ObD2UrXjGPrlomHN9tzfdnnlNDM5/He5ke6tH+XIrBZO5WTEIN1Pm9Z
	75DCKiNs8/IUs7tGIsYfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699877274; x=
	1699963674; bh=cfmKWNvi9ySzOZPovC2dZMwlGmDOYANqHBVeqSwUZ00=; b=N
	BFq3f3GTVoQHhjm7t9KANn5UThMmMppOtBhbhy+HMco7HYw8SHbzcHA4edK6GyXh
	Q8mFamXFhEF0VQwVzNRiR35o3RhoJZqWuowTvCq7X7Kt14ZPX83QD1CL5l+u0EM5
	Ctzm3e8nXT3IhJ7lgRkOPSJKuclm9nxUnct8LxstVQgeAs479Z24ZJpwVsIs/nby
	/8nmg2xrkIG20lrMXvb0Vg5eWvI/RYmABEirqtLlhkr64eVcqd5GQlX1co4TEKWh
	GR9RtUP2rVnXAWDc/x61zW0nc30OJe5tR3bJb+3S4y/e73yXrhoBvfJSotKNKYnl
	2A7kf0Thh6PPZCmNRNsrw==
X-ME-Sender: <xms:mRFSZe-FbFgIXSs5nTBUo7fdHcKGwD5dnKc26K-QXcYZYv1_bXmq1g>
    <xme:mRFSZevc0ygWP288sR59ITB9Gt62xIC3bUpB--dipZYTuQ59dys7tqz86hbStIcTp
    5LDgqiq4A>
X-ME-Received: <xmr:mRFSZUCKtCRPmVP78hotrT6vVZd_TZ8tuprO3GIh1tNVOzegiyiCo5dkPu4kghq5w1felRvFuLBva3UeQED5S15EjlI6Nha8_tI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:mhFSZWfJ9wzMBjkVjXVviYKiKth1VxwJ3hKQp-5aNOPZTz9E-mpFlQ>
    <xmx:mhFSZTMPq12SRTbDgkDWn4Uxap2QC9yN29DwJylo0pjSdAn9J99soA>
    <xmx:mhFSZQnnZ0-iHvpg3XwFYjlhPpvo-o3uD8tQ8kposHAc8YawYb_whA>
    <xmx:mhFSZeoRPjr4QqpfSJ9Q5F4dBt7gg6ztv-Y8JFbfQtlSWzF04Yc-UQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 07:07:48 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Mon, 13 Nov 2023 23:07:44 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-i2c@vger.kernel.org
Subject: [PATCH 3/8] i2c: rk3x: Adjust grf offset for i2c2 on rv1126
Date: Mon, 13 Nov 2023 23:07:00 +1100
Message-Id: <20231113120705.1647498-4-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231113120705.1647498-1-tim@feathertop.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_040754_839935_EDDD2892 
X-CRM114-Status: GOOD (  11.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Rockchip RV1126 has a special case grf offset/mask for i2c2

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 drivers/i2c/busses/i2c-rk3x.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index a044ca0c35a1..83b7bf7b48a7 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1288,8 +1288,12 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 			return -EINVAL;
 		}
 
-		/* 27+i: write mask, 11+i: value */
-		value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
+		if (i2c->soc_data == &rv1126_soc_data && bus_nr == 2)
+			/* rv1126 i2c2 set pmugrf offset-0x118, bit-4 */
+			value = BIT(20) | BIT(4);
+		else
+			/* 27+i: write mask, 11+i: value */
+			value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
 
 		ret = regmap_write(grf, i2c->soc_data->grf_offset, value);
 		if (ret != 0) {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
