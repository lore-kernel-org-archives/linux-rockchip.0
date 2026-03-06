Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09954F01801
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 07:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybP4/+mzZihXEV2ILP9shdYr741kSMpYxlv+Ph4Uf08=; b=PkY7JQxfjzfL+N
	qIgvUXhCmJxCXfG4bwQ9MFhNR8kjOwJVM+rYC5KFE+cV6zSpxKITbB9BcybDqeImu7s1IpsHVMZUW
	W/RHSJVFl7zWleT4SYuzIiEOEyv27oL9oqPR6r8eWpeWGgil5+upoWJP436hyJ9446PydkpxwgHJU
	Q3ckl8E1D4WnI+CY9jcdQ32Qv7YK/wqViOu83131JOigzhEynzhR7k+tetl6GEGLe4yqUGJIacA/S
	MjOkrwEeoYDdIP3jMUBkioY0XxCuAIW7yIMi4/eCn7xhkgiZCCrhybWeY6wEoqrF1Oeq8L1BxceAi
	biB9jLf22m/KTDqCuzDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyPo3-00000003ASR-3w3s;
	Fri, 06 Mar 2026 07:41:07 +0000
Received: from mail-m49222.qiye.163.com ([45.254.49.222])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyPny-00000003AQN-3ySr
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 07:41:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35fcf41e0;
	Fri, 6 Mar 2026 15:40:53 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/3] dt-bindings: power: rockchip: Add pm_shaping support
Date: Fri,  6 Mar 2026 15:40:30 +0800
Message-Id: <1772782832-216867-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
References: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9cc2179bc509cckunm7894a4e01405bae
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh8fQlZPGk8YGhpMSk4YQx9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=M5Va1dFz3mu/y6ZmZEf1wX2ciJ/Kp0ID7vuoLAZBWbwZA/pz8456FJi1M2KS4IKK0kKM7bNEbMQmvkEMKUMmg+AEh5hQ5VkjyToeaG2HF38pRe2i7TFp+YK6HUWqMvCBgfeKiGgibvyir5PUEiWc6G+FKcjizpQcawEGp/3MwJQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=38mHrnKAJ0MkRyoXR99jAy7rm6c8iWvbAfXMlBLrGfY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_234104_224402_3AB1EAE6 
X-CRM114-Status: GOOD (  10.44  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

pm_shaping is introduced for some platforms to throttle the outstanding
burst requests of each IP to prevent bus monopolization. Add a discription
of it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 .../devicetree/bindings/power/rockchip,power-controller.yaml      | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index b41db57..4af6c30 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -147,6 +147,14 @@ $defs:
           A number of phandles to qos blocks which need to be saved and restored
           while power domain switches state.
 
+      pm_shaping:
+        $ref: /schemas/types.yaml#/definitions/phandle-array
+        items:
+          maxItems: 1
+        description: |
+          A number of phandles to shaping blocks which need to be saved and restored
+          while power domain switches state.
+
       "#power-domain-cells":
         enum: [0, 1]
         description:
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
