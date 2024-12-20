Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6FC6E7718D
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3eBmK//mluAW1QNO/4VtSutnSOcyEsSqKkTQAWG+Di0=; b=MNLPv6ALS9mQUc
	U+2aBOqhYrj65pCz8wZuVuogqosaNNkzNBIO+BbuBv2urCYgHRFBqwvkaQ33QG5Kz0dgfReKhmyQg
	dG6LOvmUdgnCxsw/5hVC0iLzgzECL5jq8Sw1wi6vz2M8N5F/Ltdgp3tGvubB8rz6g+mD7oaKlyh3q
	WJXDSXvGE12xXIhc47nUCs94k+QLxClXN/o3kptg9q64XtuBYC0R0Y0Dq5Wwx4Otbh505ohe4cxBU
	ljgwrHBIJZdhZ3Pk/FKXVcXxSCisTBXhydwG/Tkf2cQVMKmbE3vgpIdPA6ljAFm4g8pbd3+ETpxQB
	7uC8X1uQ/GQhUAdVYlog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOayX-00000004juW-28AE;
	Fri, 20 Dec 2024 11:15:21 +0000
Received: from mail-m127105.qiye.163.com ([115.236.127.105])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOapy-00000004fMk-1Pqn
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:06:31 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 65729232;
	Fri, 20 Dec 2024 19:06:27 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 36/38] dt-bindings: mfd: syscon: Add rk3562 QoS register compatible
Date: Fri, 20 Dec 2024 19:05:56 +0800
Message-Id: <20241220110558.3511994-27-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220110558.3511994-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110558.3511994-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhpNHVZISR1CTElNHxkdGk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bf555003afkunm65729232
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTI6MSo4TTIWMghKNlEMSEsu
	NR0wCU1VSlVKTEhPTUJJTENDSU9NVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS0hLNwY+
DKIM-Signature: a=rsa-sha256;
	b=R5meTJSd9r2OrEDHoOoq9k3NvXvOtKJdPDBpupKxJ6bK+I2MfXifLLxW5dsuzHKjvjRxSbd5ZV4qcwgOWGREBaogBY19wG7E7CIsEe7ADsOmsx6g1DNRBe8bbje/iylvp5zsFazGW+NdfZAYmyaKLh9BCNsDmRFiAANeEBosBz8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=NkuDIy1va9ZxAjwWOcMBgTrba7MrQpsRJ9vGKM7NGjE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030630_559791_66F46861 
X-CRM114-Status: UNSURE (   5.12  )
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

Document rk3562 compatible for QoS registers.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index b414de4fa779..03937a82db0f 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -103,6 +103,7 @@ select:
           - rockchip,rk3288-qos
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
+          - rockchip,rk3562-qos
           - rockchip,rk3568-qos
           - rockchip,rk3576-qos
           - rockchip,rk3588-qos
@@ -201,6 +202,7 @@ properties:
           - rockchip,rk3288-qos
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
+          - rockchip,rk3562-qos
           - rockchip,rk3568-qos
           - rockchip,rk3576-qos
           - rockchip,rk3588-qos
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
