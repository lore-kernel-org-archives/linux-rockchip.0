Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87C12CEE33A
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 17:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7QDQCqshzX/qVC75cIBu3Xba0aDy9LP/3iAmO0meDDE=; b=ZQhs+ybWleSFEL
	KTUF62w15arQ/50/j7As7I70j/fY7Vmx339F2SEw31YlGbE+P0sqCScvybCT/dA64GMuyVAqa1wRS
	QqpGBbq8lsjJmL6N7fiOQtWCI8HCp1pjRjkLuijynsNSBNdkmS4a8mO1aoEXP/3HR7fhvEpinh9HX
	aTIfl22doOZN4JWTNBjPjCFFPTHhQTP3zsQVpdcdIPzZ9914qNLZnxZ3ePS2jPZiryvmvGVV2F3BC
	cFEc3O8X+eayyzWvZ7+Lipmx3aeCaJhGSDyNsBJIPY4g6sA0eDwq+3nr18zY5ladq1JtG0qZy3qs9
	wpVURHSDZ2n7Egj3tibw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syaoN-0000000AGMv-3CYG;
	Wed, 09 Oct 2024 17:49:23 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syaLd-0000000A9Y5-33QP
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Oct 2024 17:19:44 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-37cd8a5aac9so3746626f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Oct 2024 10:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728494379; x=1729099179; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=afIn8IMjC7kf2X5Y3tpOFzs6699YGBAZhINwB+OZxK4=;
        b=eTQLsHBZQMbUd46pV3VPhSKxpB5AUiG2pS6Dd2RJMEA1cFpnkWFkev4QbaE89khJMe
         31KyKiv15V0fN1Twsd5k2NkVNBQw0b2b7J3xpF86aGxOzn5HSQRIB6MAzU4tCy31yOu7
         VP7De8KBWyPNqAh8kOkWgBwrU5yWkF2cb0TksFI4tsWfk5oUWO6bRqZ8jkkkgJP+bUfb
         UGoCPAUqOvetS8NfLVRRCz09AzGPSy6PiNAsXVgRdApw1Fxm92zwQsFKJLxz/jVIkEtn
         wfqLakJjIPCi/t58TgBTKp5tgn6MZASX5Phu15Yq4kot2NIO/hbk6WU5ecdHzDcsxOFk
         HRBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728494379; x=1729099179;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=afIn8IMjC7kf2X5Y3tpOFzs6699YGBAZhINwB+OZxK4=;
        b=cYAUEPZGxvlrROwhxa5CKoPvjc8eBjn9oQyFLkozH8Lb9rZon3oRRZO1Cvz2A5GKb7
         9N6isPMRZwI69yTFTXNU8B6/TwIUCzrsfCbxnFseaeOryEbLT9DlOfE11t6ahkMhGs+q
         wcRvLcWLClsSqY2nMCIS5CTayaZIBBRiAhGGfIYaqxZsYe7Om4PKT1eFoZY2zr+w3tow
         modioIaGf+RiA99kr8ePNt1JvHK1SSLcH3c+VyoTjIb2ZwFsOYc/m7pXHiUcmq6lA6Hc
         EicKZgivm2Q59nBnPGQesxvVmqd0r88BD8jM8+8VibyvJdJoTo5iaEyB5HmWboIrR1D/
         yclA==
X-Forwarded-Encrypted: i=1; AJvYcCUCLCq7PyJ0U0fGOFQeXnPTtUysztsiiIWWBarztA8k1mNfw9bzI4ZBRu7wnEZlwjy17pLUJldCZgywlJMSFA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzPF1quiNkgQyC5Lvyv0A88CV1DvZUPGdjB6mMAErCC+RcLqmlf
	xI7HHFkfJxo50A6PveWt7OlSu/KhWoyM6ySWXk6dqSUAG+C8/fmUeZNrclD2JJPg7kb7Gh4ykJY
	V
X-Google-Smtp-Source: AGHT+IESN+5zvgJDcQvJ5AH0Ne9NxWaWaYKKtugic6yzuEwVsthJkTHx5JeUb7jgicH67N+SNJp8CA==
X-Received: by 2002:adf:a2d0:0:b0:374:c977:363 with SMTP id ffacd0b85a97d-37d3a9efa92mr2050350f8f.24.1728494379512;
        Wed, 09 Oct 2024 10:19:39 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d1690f767sm10882855f8f.20.2024.10.09.10.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 10:19:39 -0700 (PDT)
Date: Wed, 9 Oct 2024 20:19:35 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Anand Moon <linux.amoon@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v6 RESET 1/3] PCI: rockchip: Simplify clock handling by
 using clk_bulk*() function
Message-ID: <614d3e0e-10ba-4c13-a309-1e4305b5951a@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241006182445.3713-2-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_101941_852949_64459F66 
X-CRM114-Status: UNSURE (   7.91  )
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

Hi Anand,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Anand-Moon/PCI-rockchip-Simplify-clock-handling-by-using-clk_bulk-function/20241007-022714
base:   8f602276d3902642fdc3429b548d73c745446601
patch link:    https://lore.kernel.org/r/20241006182445.3713-2-linux.amoon%40gmail.com
patch subject: [PATCH v6 RESET 1/3] PCI: rockchip: Simplify clock handling by using clk_bulk*() function
config: loongarch-randconfig-r071-20241009 (https://download.01.org/0day-ci/archive/20241010/202410100015.9W01OqrR-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 14.1.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202410100015.9W01OqrR-lkp@intel.com/

smatch warnings:
drivers/pci/controller/pcie-rockchip.c:132 rockchip_pcie_parse_dt() warn: passing zero to 'dev_err_probe'

vim +/dev_err_probe +132 drivers/pci/controller/pcie-rockchip.c

964bac9455bee7 drivers/pci/host/pcie-rockchip.c       Shawn Lin             2018-05-09  122  	if (rockchip->is_rc) {
58adbfb3ebec46 drivers/pci/controller/pcie-rockchip.c Chen-Yu Tsai          2021-01-22  123  		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep",
840b7a5edf88fe drivers/pci/controller/pcie-rockchip.c Manivannan Sadhasivam 2024-04-16  124  							    GPIOD_OUT_LOW);
58adbfb3ebec46 drivers/pci/controller/pcie-rockchip.c Chen-Yu Tsai          2021-01-22  125  		if (IS_ERR(rockchip->ep_gpio))
58adbfb3ebec46 drivers/pci/controller/pcie-rockchip.c Chen-Yu Tsai          2021-01-22  126  			return dev_err_probe(dev, PTR_ERR(rockchip->ep_gpio),
58adbfb3ebec46 drivers/pci/controller/pcie-rockchip.c Chen-Yu Tsai          2021-01-22  127  					     "failed to get ep GPIO\n");
e77f847df54c6b drivers/pci/host/pcie-rockchip.c       Shawn Lin             2016-09-03  128  	}
e77f847df54c6b drivers/pci/host/pcie-rockchip.c       Shawn Lin             2016-09-03  129  
9a8ff91a0ee96b drivers/pci/controller/pcie-rockchip.c Anand Moon            2024-10-06  130  	rockchip->num_clks = devm_clk_bulk_get_all(dev, &rockchip->clks);
9a8ff91a0ee96b drivers/pci/controller/pcie-rockchip.c Anand Moon            2024-10-06  131  	if (rockchip->num_clks < 0)
9a8ff91a0ee96b drivers/pci/controller/pcie-rockchip.c Anand Moon            2024-10-06 @132  		return dev_err_probe(dev, err, "failed to get clocks\n");
                                                                                                                                  ^^^
Was intended to be rockchip->num_clks.

4816c4c7b82b55 drivers/pci/host/pcie-rockchip.c       Shawn Lin             2016-12-07  133  
964bac9455bee7 drivers/pci/host/pcie-rockchip.c       Shawn Lin             2018-05-09  134  	return 0;
4816c4c7b82b55 drivers/pci/host/pcie-rockchip.c       Shawn Lin             2016-12-07  135  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
