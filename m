Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B528C49361
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 12:55:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4634761992
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 12:55:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4634761992
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y34Gs19aPzxkxXQXUfntDhYZ1BljiuHNwi0Z92DmeWA=; b=PhN3QO16B2ugHn
	ym3H68xqUf6h+g07tv0VAJfspfJEZvT7A9nMkgYGe7gS36JGb4yOhzU+xxRnfvnjg6awmOBXSC8Kb
	g6NywkQBGXRyCDx/IS2E77euZf1Tn+q9j3eFVBEDOf1Yg+HCNPshiqzZ7L9HtXvXdejQCVKqQbGdA
	wfT4B7NZhz0Mt/gcIiZXMgLTl4Jkuh+P+jiRbFSqGKKwqdkHTyKoHzMj7we74xqHGsNSvChWWjMhZ
	ISno9bCPShTaiLdT+v4RnZCtDY+H67C2sRTypXEm4AVeI/PyNWh9JjC8IuddbfqBxnJ3+I/zdFVBO
	hX7hI3AguHb3tCWl/9vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxqn6-0084es-8X; Mon, 28 Jun 2021 12:55:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxqn3-0084cC-Ra
 for linux-rockchip@lists.infradead.org; Mon, 28 Jun 2021 12:55:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A05C41F423EF
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 maccraft123mc@gmail.com, Chris Healy <cphealy@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 09/10] dt-bindings: media: rockchip-vpu: Add PX30 compatible
Date: Mon, 28 Jun 2021 09:54:09 -0300
Message-Id: <20210628125410.9228-10-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210628125410.9228-1-ezequiel@collabora.com>
References: <20210628125410.9228-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_055506_139568_0048F1D6 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

The Rockchip PX30 SoC has a Hantro VPU that features a decoder (VDPU2)
and an encoder (VEPU2).

Suggested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index b88172a59de7..130d7a0604c5 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -26,7 +26,9 @@ properties:
           - const: rockchip,rk3188-vpu
           - const: rockchip,rk3066-vpu
       - items:
-          - const: rockchip,rk3228-vpu
+          - enum:
+              - rockchip,px30-vpu
+              - rockchip,rk3228-vpu
           - const: rockchip,rk3399-vpu
 
   reg:
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
