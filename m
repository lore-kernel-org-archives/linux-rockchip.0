Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBA71C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 05:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yHawu0Bc64Rh2OwStmMidMZ373o3PcOWNk16lqiykU0=; b=Ky6wtjiOIuPLtD
	2nX753A+5MNF15qaR7ghOefHrVB+kCUHM7MYDk3IUh31W97KqvzfWSAH43uAVxoI2qMHOlBk9TOh5
	NgadVa3PSO2bOxlnBm4T8YeZXzaDY65KAiz1FDYc7Q0/n6/fIO/FaQ0j3EdIOdYgo3QZNPlRzOr1d
	Kz9U9ecaKNjAEqMg6w1CYXhIqDMWF48dZ7K+9Mx8gerW7XoO/TD4d0EgiEfKrb76/eCtHkO8Ovzah
	ca5JC/FDjYupIqoNqOBRHIuGN++4JDp15AMOw1LD6xnaUKPhrhq+/6dHMixacnihnq52Kfq4+jT0n
	dUpNtNNnMwrFl1JsxHOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwbaz-0000000Axl9-0U8V;
	Tue, 16 Apr 2024 05:43:05 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwbat-0000000Axhs-3Ww9
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Apr 2024 05:43:02 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6ed2dc03df6so3568831b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Apr 2024 22:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713246177; x=1713850977; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A3zTEkiG2nqHLpygf92sT5A2vKJ1K17V0uKLVPKWPqc=;
        b=FRqFL6LYllKh/doF+HC0VtaJGJW0rLLWwKi90vCSwr3pDtuQFyGQ1KMbooi9P7A+QM
         tvdbGl1z9Yh89AtLfZpVzqKbE0KXx0z33QQJG1cLto+zXAUW4qoJAKnn3cjOKmmD4XSe
         wTzR+63IEoGxbwIGXA1sMIyrbxGOxPp+sqaulme2qTj6UVLQMWC5mgvZafZ79lgymPtl
         a03X5g9Ra39c2ZXEbvBk9ctvGcQXGkHgTBbAWNVAv8mhzoIhPlVLx+24RSyGnGZPa/8M
         nY7ipnsiWXOPa5HDBdcF6Ip3H+efSRs78sLu6+BXmHxaKOvTh1YhDUbWW0irEuVtQcVH
         TG+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713246177; x=1713850977;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A3zTEkiG2nqHLpygf92sT5A2vKJ1K17V0uKLVPKWPqc=;
        b=X74ngfVihj2q0iR4N8XYECSgX1FIcyj3ouq5wthqp6TZt1NhGDobzV7XJRcMwiZdQl
         snGV96SArdwpAiSwmj/P9VhhejbicdFcfmIiaVFpd0BZvzvN5e2SBtihx138yh7HFtQ1
         hgiX7FVYxOtMlT0C/LCFpu11tY5MLfpUUFEWEsfPZ2QxNFl3C2/+tAOadJq9rNSQIsu2
         MNju4T8q1xmEW8gNf2GzN0EN/TuoJeX8uE1hu8oBt3s5er0JPvCen8cT2RvSWpzNLwsP
         RT32ZqjXlrvCPdVTnH/unI/hkrK5IsAJko17mUZQnS+FkSqgFL/7F3SVJXDppuI55tFM
         TZtA==
X-Forwarded-Encrypted: i=1; AJvYcCVTBKSSvnn5wB6AGMPsqY03Q6wo27flmpjqDHw1NcmJ/UqBMUFVVHR/SweQuZDJQxwqqwHBJlkT96IhPP1JAwqSdUV49D2XhEplVh1tUhlDnLwo
X-Gm-Message-State: AOJu0Ywki2e23KDhW03m/SGKgeuxo85MkbM0zhVtE21a0m1Z7jPvU+w6
	hH4qtI8JX3WoSPL/zxwcMX/nZizXOifLCMgjpNl6VxBlg+a3be4QFdBVKEl3NQ==
X-Google-Smtp-Source: AGHT+IHmL5CGk/C9YY3eQgCl7Y3aehKD10gTha3MpE92TAHps4Lx1+7Q4FtBizYCJM5LHup7vD1Aeg==
X-Received: by 2002:a05:6a00:1945:b0:6ea:f4ad:7298 with SMTP id s5-20020a056a00194500b006eaf4ad7298mr16195085pfk.34.1713246177243;
        Mon, 15 Apr 2024 22:42:57 -0700 (PDT)
Received: from [127.0.1.1] ([103.28.246.221])
        by smtp.gmail.com with ESMTPSA id jw9-20020a056a00928900b006ece7862035sm8096651pfb.128.2024.04.15.22.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 22:42:56 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Tue, 16 Apr 2024 11:12:35 +0530
Subject: [PATCH] PCI: rockchip: Use GPIOD_OUT_LOW flag while requesting
 ep_gpio
MIME-Version: 1.0
Message-Id: <20240416-pci-rockchip-perst-fix-v1-1-4800b1d4d954@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMoPHmYC/x2MQQqAMAzAviI9W3BFxvQr4kFq1SLo6EQE2d8dH
 hNIXkhiKgn66gWTW5OeRwFXV8DbdKyCOhcGaqhtWucxsqKdvPOmEaNYunDRB0PgjsiTm7sJShx
 Niv7Hw5jzB1Ks2+JoAAAA
To: Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 mhi@lists.linux.dev, stable@vger.kernel.org, 
 Slark Xiao <slark_xiao@163.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3420;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=YzcwzdZL4XKreo1CF3wbVR5j3L/jHhRL6gcOR16pIWc=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBmHg/crzU1Kkb1i9AqXVJ3hRXBiUx9TkrzmPVOq
 mUTZO2izYWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZh4P3AAKCRBVnxHm/pHO
 9fTRCACK8wHhlIy/kLvZHbQzhc/EFgpLhGxBwGkKpiC9xOYMycx6mQuk8X1lpK2goCoKljGgktY
 e/Ti3YO9R2ntH5ycJCk/FK/xMY1wZffrkZYUg6QKtEvZoa/kWnzAIk+Vt9bagTtP++dRzu4C7bq
 0Zgccetk3ERl1hzVhTluvHGB1AEHOCgCIyQTOS31v3gy2QmRLo4zDLQULZvtm6X0fNDJNQ2qlsW
 ftcyIPvXBVxIDlkQsY8t5m23kXP/PeVhPhIn/bvbB2rJ5g4Tsr15A3RwqVuSKt9C6V89PogwlGn
 qFNOcL9t95ugWM11fE3JxyLL309ww7DJvfLnqgnK8zPZDpqZ
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_224300_009293_F4E7AA24 
X-CRM114-Status: GOOD (  17.54  )
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

Rockchip platforms use 'GPIO_ACTIVE_HIGH' flag in the devicetree definition
for ep_gpio. This means, whatever the logical value set by the driver for
the ep_gpio, physical line will output the same logic level.

For instance,

	gpiod_set_value_cansleep(rockchip->ep_gpio, 0); --> Level low
	gpiod_set_value_cansleep(rockchip->ep_gpio, 1); --> Level high

But while requesting the ep_gpio, GPIOD_OUT_HIGH flag is currently used.
Now, this also causes the physical line to output 'high' creating trouble
for endpoint devices during host reboot.

When host reboot happens, the ep_gpio will initially output 'low' due to
the GPIO getting reset to its POR value. Then during host controller probe,
it will output 'high' due to GPIOD_OUT_HIGH flag. Then during
rockchip_pcie_host_init_port(), it will first output 'low' and then 'high'
indicating the completion of controller initialization.

On the endpoint side, each output 'low' of ep_gpio is accounted for PERST#
assert and 'high' for PERST# deassert. With the above mentioned flow during
host reboot, endpoint will witness below state changes for PERST#:

	(1) PERST# assert - GPIO POR state
	(2) PERST# deassert - GPIOD_OUT_HIGH while requesting GPIO
	(3) PERST# assert - rockchip_pcie_host_init_port()
	(4) PERST# deassert - rockchip_pcie_host_init_port()

Now the time interval between (2) and (3) is very short as both happen
during the driver probe(), and this results in a race in the endpoint.
Because, before completing the PERST# deassertion in (2), endpoint got
another PERST# assert in (3).

A proper way to fix this issue is to change the GPIOD_OUT_HIGH flag in (2)
to GPIOD_OUT_LOW. Because the usual convention is to request the GPIO with
a state corresponding to its 'initial/default' value and let the driver
change the state of the GPIO when required.

As per that, the ep_gpio should be requested with GPIOD_OUT_LOW as it
corresponds to the POR value of '0' (PERST# assert in the endpoint). Then
the driver can change the state of the ep_gpio later in
rockchip_pcie_host_init_port() as per the initialization sequence.

This fixes the firmware crash issue in Qcom based modems connected to
Rockpro64 based board.

Cc:  <stable@vger.kernel.org> # 4.9
Reported-by: Slark Xiao <slark_xiao@163.com>
Closes: https://lore.kernel.org/mhi/20240402045647.GG2933@thinkpad/
Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/pcie-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0ef2e622d36e..c07d7129f1c7 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -121,7 +121,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 
 	if (rockchip->is_rc) {
 		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep",
-							    GPIOD_OUT_HIGH);
+							    GPIOD_OUT_LOW);
 		if (IS_ERR(rockchip->ep_gpio))
 			return dev_err_probe(dev, PTR_ERR(rockchip->ep_gpio),
 					     "failed to get ep GPIO\n");

---
base-commit: 4cece764965020c22cff7665b18a012006359095
change-id: 20240416-pci-rockchip-perst-fix-88c922621d9a

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
