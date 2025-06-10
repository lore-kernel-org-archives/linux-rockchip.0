Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6FE5C677C4
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 19:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uSDlOrwN0zh1vZFLBTz7PfVJCjJxoixYkIySFvQys+w=; b=WNKsqb+QNGY19A
	jB9d6eW9efVSGuZ1xIbjzOv8MblasTsjAsHIEG6AyyJhkSt4t7h6M5Uw3RXcluxUDnr7iBmPqeqxG
	o3S9nboUJpIhSOQkZs3hpNGQ89DtrFGOcbdcop6ivC73DUTowA2cCMNH9vnqao01V0YzhjHd7vC9A
	tXmJG5rLRkySep4XoNjmVxj90WxGper1ot8bxVFYSaSDpCaHyt7OWAVbgCy/SiuEhmgN9vQD9Oald
	5X34NlzPy39Fj6DG5Z92DRc9l6TRPZESRFeOHQmniO9xt3dOrvi6jDzx2Vt/xDBRmgdCILZigXOoH
	jKk7w5ROhQGRGaDu5Ndw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP57O-00000007z7g-2AlC;
	Tue, 10 Jun 2025 19:58:46 +0000
Received: from mail-vs1-xe2b.google.com ([2607:f8b0:4864:20::e2b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP1yD-00000007UcB-3emz;
	Tue, 10 Jun 2025 16:37:06 +0000
Received: by mail-vs1-xe2b.google.com with SMTP id ada2fe7eead31-4e5aa697e7eso4351137.1;
        Tue, 10 Jun 2025 09:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749573423; x=1750178223; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+nqEkPlu56izKVRCcBxWQQRBgYviwPk2wR3cGWZ9+hA=;
        b=Hv9CZEx51+4Lao4WiFFUOcGWxgEN3oXPiLWW0rGhywDY/RXjqCQT7goYDS8EjxMSn9
         DK/TxlqU8Rkh+rJPVj/ZtkJK0EyU9w9S5cvKkFAvf6JkUmyM8H8jKOT8cGCj2cuZX7jL
         5rWr+TwCqfj5dPWSk/Lzb0nglm8L6JmO3uLeFZIcqVmigeIO2xms8PDfOYemCud7vUBq
         Y8NsyUy2LRf5XLiLj2+KVIu0eR0P20h4PbHKYDdLwAasyZ6nTTfajuTbRB/pymxE/kdC
         SQH5te5Kj2a9dpjo/Y5Lq1mxrwOdggd3DV084tBTaZk7cNdr8zOy5wLdZZCZG6VpHERL
         l0Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749573423; x=1750178223;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+nqEkPlu56izKVRCcBxWQQRBgYviwPk2wR3cGWZ9+hA=;
        b=R1NFszrEOZDKN6OzQ1D2oIPuDXmvxqv5ZcSToUt/GywgctL106vYctXf9eQHPU8OrV
         ArB69x3XvhrfstIhLzJnRCyKx4fi2DSCDfJ13gLjI5oJJNTerOWimeeQltYJimh3TQAP
         orPu5IOPn9p+iFY6pK5bp3OxbOidr6Bc5TeCpbDacsjGw4qd3mXEgoCuxfxnahcarZU7
         W7qyLDQV05oQuh0yuSXZrhQzzIsoiM+FpV/yE+mdxz9KxqkiWXyN3c0r8UIapEOPiN7S
         oE348t1ED2JqQfATi735dnhIzkYnqisMA3fPOe12u8oX7h31XkIow/Am3ZpaCYpOclyo
         yJDw==
X-Forwarded-Encrypted: i=1; AJvYcCXzlqFzWuywgr9UjjSP44sHZKjmqOLbK+JJNtsmD+9AFT/Q1ioaIjrwDVdVj8hwsFqAxhUZ3MNLe+nL0WXx7or1@lists.infradead.org
X-Gm-Message-State: AOJu0YwnUF+ZTxS3WkvTzLAVBUBUj9d+OPWKumLn/YIOrSiXC3Qk/J3T
	UwuZAWdlDf/DbwvkmNywwUBaQUZuoO8APbx509D8PCqKfdSqa841xOSsMAYuaRQ1
X-Gm-Gg: ASbGnctashymkVtu0MyENPKiG9h8tcifpzCMam+dI8HJWhCbx2Ot5sp0HZJFzrpccKK
	9prvEJfH3u/YWlD4eU0It1jpTS1cH9hiW1lmbCw/2wYVg2UDc35nT7utz0+zNQAs1GZmzlgPd3i
	kP+NdO+awwzjx+lIy2ScSP+aLKDOfK+P5hb7VOojHr0hvaUCjs05GY109iBRSlx3Wd8dx35siDn
	+SJZ8ou+JeLgJjfOmFg4PNI2aU2C/Uk13A0QBnU9+CXW8CTt9CdPgMyWm2KDhve3ZtqaxbGo6An
	kToCZI9WfZqaMqa+Py4M1wtboa3SQ5xyXMpfE81xNa7HfnltG/Tom3XHY6uj
X-Google-Smtp-Source: AGHT+IGEWQ9kp7g1IHALe6XyZa16xeumaOw/ktccGJAoVzbIN5nr7Lb+92+/jcCF/Cfok6IL1EUV+Q==
X-Received: by 2002:a05:6102:f9f:b0:4c5:2c3e:3841 with SMTP id ada2fe7eead31-4e7ba629798mr145476137.5.1749573423174;
        Tue, 10 Jun 2025 09:37:03 -0700 (PDT)
Received: from geday ([2804:7f2:800b:5a56::dead:c001])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4e7b5c7421esm801753137.13.2025.06.10.09.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 09:37:02 -0700 (PDT)
Date: Tue, 10 Jun 2025 13:36:52 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Hugh Cole-Baker <sigmaris@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 0/2] PCI: rockchip-host: Support quirky devices
Message-ID: <cover.1749572238.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_093705_907983_907A3553 
X-CRM114-Status: GOOD (  11.95  )
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

Hi folks,

while I understand there are lots of already-working PCIe devices
on RK3399 there are also many quirky devices which fail link
training and refuse to enumerate. This RFC series is meant to
alleviate this problem and has been tested on my Rock Pi N10.

Note that with these patches, link will train for quirky devices
but with Gen1 only and only one lane (x1). I have separate patches
for improving to Gen2 and all four lanes (x4). They don't depend on
this fix however and since I predict the present patches are bound
to be controversial, I decided to send the quality improvements
separately.

Hopefully this time the series will be threaded. Thanks Heiko!

Geraldo Nascimento (2):
  PCI: rockchip-host: Retry link training on failure without PERST#
  arm64: dts: rockchip: drop PCIe 3v3 always-on and boot-on

 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     |   2 -
 drivers/pci/controller/pcie-rockchip-host.c   | 141 +++++++++++-------
 2 files changed, 87 insertions(+), 56 deletions(-)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
