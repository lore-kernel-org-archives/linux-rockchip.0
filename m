Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E7B9CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Nov 2025 06:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGRG5O0c/jDxOvxzp8O9ZUaW6dWWftYfuFBZmKOjZvo=; b=Oq17iACqbQHiZ9
	CDg5iOOfPyZOrchpJujyp4QlyjBdvje4kza6073VIcQeIQvBVAlrFoZWiiX0nMclxdNzv6bDd7uTn
	Mc3RmDg7d4M9fhoFPU/x76ov4HvScbXU+Oz3F3BNwsZaJbq3Lz+JIgabNHLd2Ui4OZkqSVrF8zyMw
	4iEZ3h05Z1kczWXSJFV4OYhURj0CEct6+JqHTy85jIThPuf0N5I9EgoGzXCrev1w3BWa2YzVSE0L9
	yta9IPLI2Yngolk6SAzavlrwLu6O5eI5Vq0KWLG89a7JzAxEU9WHxgEmn8cY0MkFpAs8yHIxYrrzD
	0eOCXwbmk6eOGQW8TkAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFo2Q-00000009IQQ-3EMx;
	Mon, 03 Nov 2025 06:27:34 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFo2O-00000009IP5-1tBb
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Nov 2025 06:27:33 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-b9ef786babcso136519a12.1
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Nov 2025 22:27:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762151252; x=1762756052; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fGQSi9N7yhCq+36qhzFLEOuP4uo/epjBJB4vjqFx0/0=;
        b=iF4CL2d/lDgTQ6lt5wOqQvYYQ2A5cu7h4c7DDWRDEha9eexD7/Hana814TaYJI98nu
         BcGS5f1XoOCTjgRWUzOtITFIPByq8y7gJrE5hrCRvJy+LNF9IWSiZCJLO1G1Q6ocxT9s
         Ay+GcZjsgYcUlWpzejd78WX+svIAoUb4gnmVbqR60ZkZJ4o7IqmGny4niNh99Xx/FQEG
         L7WGQusYqhfHblQC/WoAcczluirMS49j0R2FMOTotWcNF/MSUQ4PalXrt3EHRFZ8d+qH
         QK78LMbydjcS27aYWiV2/PS8vtkIJrMCVOwuaL7BcwJHgQHytSwb4UTcWhJcwcPF3g4n
         X9jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762151252; x=1762756052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fGQSi9N7yhCq+36qhzFLEOuP4uo/epjBJB4vjqFx0/0=;
        b=Rnm4exlWMvuIeLvzEYdOJmrkJc7Za0qFZGeUcv4CmHrEFYXN3s/J2cG8gijAcAYjd8
         7UDPNCVSMpB7Ypu4GckSZnRYq+Xv1/QVYGe63RMDQqvMl6gkxUhvFvcSV42A/YrHl2wm
         uhEOynRcju6wKp8fsyrK5jOmkjPfJaxN9M6I2c99Hfu0x7Xc6Jxe/X/rVw8sGu9JVy9x
         jgqwImgG91YfTljCssPiI/oHF+tnXkhod5n5kY1+k9W/pzoYEOgDXTyPm3jr4JVY5KA1
         DQgZ39zlU6zzatiqoMlxe6HMFN84mveXClK0DVBtBBWh9FRVKQ9FedukHp3CeaibXSAb
         tkOA==
X-Gm-Message-State: AOJu0YyLpeVs72BdMsXY+g6aDNWdUBO5uScT6LmpgU8pMzERT381XVbD
	7NjJZCCUGDkf/aa4RFjitYFr+IbBh3xgEqwQrGKkljld9dBa8FF/lJiwitAy/5rY+20=
X-Gm-Gg: ASbGncsg3H4Cg3cK0fKikwk5jZ309SieVj4Lee7sJ6bBtorBfI1MTEi+UfyI2ZneDoa
	XELzlA05BlODv5dPitucYH9OGCNJ+WzqAYa3+6dzRq4aiOhlAwzsq1ACz79yEaMGePB001MTyLF
	XvBFdBz3dSrKFz2L2808BgngvckER1JT9vqgvJYj9S9sL1KeS0jFb1Qt2KR1X2bwuX8mT5Ww5ov
	msZqT2a7Np4M7v7Kli2Y09Xdqn4uj+Urc2GeI07AeLchsfqAF5+pempSxu9/DKvZqObGe3tc4T0
	3UGwGd5WjOEjNRGuJQ9XRF9O3TSBvkPvuwRu+DXcoy2wKBg9ogi9+qWktMTQUaWqibo6WtzL9Xg
	1OYGuTTpU07S9jJxGsIoaDYySl7PG9WPa3Wby1TuBizKtYLlskryGLTQCYMz8/hhAKztAIPuVfF
	L2HDlQs0FA
X-Google-Smtp-Source: AGHT+IHygtYx3odpw3ozCs9WNVhh+vHH36qWHi9VL4Po+sTq1elwFX207ryIat6ht5qVwQ7NnSvjZw==
X-Received: by 2002:a17:902:f709:b0:290:29ba:340f with SMTP id d9443c01a7336-2951a47798amr138513945ad.42.1762151251610;
        Sun, 02 Nov 2025 22:27:31 -0800 (PST)
Received: from geday ([2804:7f2:800b:fff9::dead:c001])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29564fb5214sm63355205ad.11.2025.11.02.22.27.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 22:27:31 -0800 (PST)
Date: Mon, 3 Nov 2025 03:27:25 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>
Subject: [RFC PATCH 2/2] PCI: rockchip-host: drop wait on PERST# toggle
Message-ID: <d3d0c3a387ff461e62bbd66a0bde654a9a17761e.1762150971.git.geraldogabriel@gmail.com>
References: <cover.1762150971.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1762150971.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_222732_493895_CB6D2F2B 
X-CRM114-Status: GOOD (  10.24  )
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

With this change PCIe will complete link-training with a known quirky
device - Samsung OEM PM981a SSD. This is completely against the PCIe
spec and yet it works as long as the power regulator for 3v3 PCIe
power is not defined as always-on or boot-on.

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ee1822ca01db..6add0faf6dc9 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -314,7 +314,6 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
-	msleep(PCIE_T_PVPERL_MS);
 	gpiod_set_value_cansleep(rockchip->perst_gpio, 1);
 
 	msleep(PCIE_RESET_CONFIG_WAIT_MS);
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
