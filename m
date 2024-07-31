Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C41EEC52D54
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 20:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUntmw//khhsu/O+eu/O//fJnkj25NKN5zkeHJAkXJU=; b=cUI/KnHFpIRMxp
	r5MSExAxXZPMFWazbi+1CGEiwZlZHiBEgI1HAYIQvwij1KmV3wMgdZbE6Et5Tj87FJvN8V+H250D0
	r7sAbtU8lLopB8RIE2igMzA+/ExJHIfZ3KmDAEDYDdeYU/eYDvCpGggOU/N+WB8iLVpwgx/boDSb5
	gIwR6iOgfqRCzZ5iWAJ1N4bRcCwapCkMAN1DmSrfPVnvUh+ao2zowTmFhf37DgBoNZLmeYtKXRsMW
	kTk1EAkwj0FXtd/We6+R7B3GCwowWtQwsY67GM6eiqdmkizTc5FI+L79MME1Xh5YqZDuPIeJ3Nw9s
	YgxvtLRzpjwDNozdffpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZG9b-00000002U7C-0J7I;
	Wed, 31 Jul 2024 20:42:35 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZG9W-00000002U54-3SEM
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 20:42:32 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id BE50A40460CE; Wed, 31 Jul 2024 20:41:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su BE50A40460CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1722458514;
	bh=4jtqVeRk8i45uB6Vce88P8reMQMRwNTaDj7OWx8+YiE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PSkrnQuof/2wI9h4oLzj9AVWcEcB1viQ4c95L8RfL4/+1WvWlugZEbrjRKJTRSY3G
	 U4QHBymLqXExmjqgYo6aY9q8kOz2mLgl5tEaQbSYS6Zyexc36Hv/yzh3Ukn5KUbzgu
	 N1bQ2mVscLvJUd6D56iut4w/0MqfbUDQuu0sSxRcg02JVcu7cTppyiJ89/Z8hbPcQN
	 l2HrjIhFgUr+rUC3/dMquENWFxmqQIGRp8cgLBHR9u8vktACiB3M1UA7Aw4hExW05G
	 nobuP9dNuMwhpC5v2fEz5oxg4tGzujZK6Lx2mO2iMo/RlFlvzFLP70VSeq3b23sXPF
	 bQb+MvYptlt+w==
From: Sergey Bostandzhyan <jin@mediatomb.cc>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: [PATCH 2/2] dt-bindings: arm: rockchip: Add NanoPi R2S Plus
Date: Wed, 31 Jul 2024 20:41:26 +0000
Message-Id: <20240731204126.8689-3-jin@mediatomb.cc>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20240731204126.8689-1-jin@mediatomb.cc>
References: <20240731204126.8689-1-jin@mediatomb.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_134230_953124_D63D8267 
X-CRM114-Status: UNSURE (   7.71  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the NanoPi R2S Plus variant, which is an R2S with eMMC.

Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..e3121d4eba18 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -216,6 +216,7 @@ properties:
               - friendlyarm,nanopi-r2c
               - friendlyarm,nanopi-r2c-plus
               - friendlyarm,nanopi-r2s
+              - friendlyarm,nanopi-r2s-plus
           - const: rockchip,rk3328
 
       - description: FriendlyElec NanoPi4 series boards
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
