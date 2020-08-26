Return-Path: <SRS0=0IO0=CE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEC13C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2020 17:06:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B0E2A20737
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2020 17:06:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="vr0ht5YH";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=airmail.cc header.i=@airmail.cc header.b="ZZKkSif7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B0E2A20737
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=airmail.cc
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SdNKWxeSR8eHpyUcX/OLgcMi0a2o1f3Tr85l0rVBK8A=; b=vr0ht5YH7X8/4IqGApczYfWW6
	pnZUNmIYX0NhUJiAIbcUF3T2reh8TjWLi2P7nrERwcRxFqfsdCH2DsjbpmR9BRVG5ZMAOFPE7bwKW
	O/xcLzb002Le0qcATqUn7vt/qhvspW4mNj+wAfAwAyKFBgDxk273Ten3/Hf+2S5/wW0eo+CkxOgZe
	H+jrXXoEy2AVVmllM+rtkWB28ZwHyrB2pkD5iisMj4yoQbD5YmNI8ZpTIoSeDvz2HEaYC0e6haoYq
	eMEiYsmPHy4XhJ2BA0BkGCMR9wsBvT0f4wmmyqQJTbkBlpJQjnCFStizzuoXQURvsUIEMJfw6kS0J
	+0QM8CeUQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAysl-0001pZ-BH; Wed, 26 Aug 2020 17:06:43 +0000
Received: from mail.cock.li ([37.120.193.124])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAysf-0001oF-12; Wed, 26 Aug 2020 17:06:37 +0000
From: travelvia@airmail.cc
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=airmail.cc; s=mail;
 t=1598461594; bh=b2c3KVSkSjcAJ2SPOYNQuI+C8ljuAnkMKucT/VwP7O4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZZKkSif7gmWEvUUxMHgk319clY46GpAMcjY+OSf2lniy/ZSBHsv1tY0PWJ9H7WMdr
 3KEA7pkjU/XItv0midLva6rwnpwRUC+LEg1Y8AfR8MPNwY0dRzpxOFTTDqU2ExSF5l
 TAxh6MjhNGuYIB55rQU8OghPKxwO/7I+c34asRxNlqAR0ydDGvK+GJCnMTQzHhxdt6
 WANG8J53FUnQCU+Jbt12mSwUdjjwM0iOBjGuk3e6HNKfsBZFGK2QixFYX0IBIwW7Qx
 qBMVYydGbjXAgvebkJ/XG8f78Ejo1QVqJ7SU07dxwLOPIMdJb67sxWbb3SY6K/61y5
 8YHE+eLPMpbpg==
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 2/4] usb: dwc3: of-simple: Add compatible for rk3328
Date: Wed, 26 Aug 2020 10:06:21 -0700
Message-Id: <20200826170623.15469-2-travelvia@airmail.cc>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200826170623.15469-1-travelvia@airmail.cc>
References: <20200826170623.15469-1-travelvia@airmail.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200826_130637_250109_DB323C9F 
X-CRM114-Status: GOOD (  13.26  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: gregkh@linuxfoundation.org, cnemo@tutanota.com, robh+dt@kernel.org,
 heiko@sntech.de, balbi@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

Add a compatible to be hooked into by the Rockchip rk3328 device tree.

The rk3399 compatible cannot be reused because the rk3328 SoCs may
require a specialized driver in the future, and old device trees must
remain compatible with newer kernels.

Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 7df115012935..0727bf2304b1 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -171,6 +171,7 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
 };
 
 static const struct of_device_id of_dwc3_simple_match[] = {
+	{ .compatible = "rockchip,rk3328-dwc3" },
 	{ .compatible = "rockchip,rk3399-dwc3" },
 	{ .compatible = "xlnx,zynqmp-dwc3" },
 	{ .compatible = "cavium,octeon-7130-usb-uctl" },
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
