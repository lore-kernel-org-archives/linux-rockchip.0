Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE719EE57D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 02:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqS3uof095jnvkMXjv8/bgI3J9ZruPw4JtOecJykkjY=; b=fUyBvNNsrQ3aPU
	ATEKKg66FZYTFwnD4NyT8NRsYcjWodUZ7Kga87RiefsFxA20k2WyxMhpY/2cZfZl3IMhdX3KZSd92
	PCJfyuYt+jCTANRw8xrSF0ilhrgqJSJ0L2mOZBuyV52hu1DRYH76sk0dhnomFn8sbjkuLQgWKyr5u
	jK7/ofmPc5KfqXrbnXxe84AIhBJenIFGIjW48yIJ2vdK1JEhvPZoNHfcg1yTrcCF5PK3dnMVr9I7D
	80zuBhOoIWEs09uWD9TTeNIqMu1ufLeaOWumg2k/1467fkDMRUBW9Jqj541jG+b+9YvVABEsUcGfn
	h3lCAh4Doh6a/Gl1KcsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vamQ4-00000005c0m-42rG;
	Wed, 31 Dec 2025 02:58:40 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vamQ1-00000005bzF-1lho
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Dec 2025 02:58:39 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-b7a02592efaso1592717966b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Dec 2025 18:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1767149915; x=1767754715; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zUfeQsuPis8+vWGa7ve6iy4exkmxdmo6Yqgm4mr4Xz0=;
        b=LlT6CWKClfTbZVMbCUtMWgC7EhoQ/Mq4/hgNC1SjIo1CcONWDeHlv38HBe2iUimiie
         q0iVDIge7dzINg3UflSwzmBigXjjjaLqnZgdIP0VHGmxzFE7WaXjyF7gHDjoaNgc4r1T
         ZFsaPQFHV8Lh6cjQERoQuyLRXVzui5Lxixl2xnggANp8hBOHk12neJg0eiOouwLxWXhn
         mC9Z218iV4ibWd6+cVLa2ckV2OJ+Z55yzugNQlGJSYwIQo8GcZDawUNUhdt/OkxuueTV
         CYVYLX/gIVPYz+oO8OtEiMV9a8NwbKvGtBgy/DSNK5+hoop244ZlbnGtkrgtkywkAzdL
         BUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767149915; x=1767754715;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zUfeQsuPis8+vWGa7ve6iy4exkmxdmo6Yqgm4mr4Xz0=;
        b=EdObRYrWD5Con6hDwns0b9b6OES4nfUeHc4MuQ9bEfxHvuVLlZV9dm6nSNSZgDGJcr
         RenR4v9ko93OtxJTD9l5fn14R4s7eOsRKcXtYkHIH+xiU5Pk0GTTvJdAKd3ughv8FN8V
         loxTdxicHXrosXJPStqFURUAMnUC5Aj6HQ3U6VA7SMD95j29x4sufH5XAntfVk+0JOCb
         VgvxCRn290aoum6uX6HV0DhUWddsv/n14azbkRZZEjDvOgaq2O3xhUy++hV+56IXPuhz
         2vkPQNu2VBMLjJu/ssqIK/yHiCquz/EqFHsg+/fSIa4WhCLkSNk1glUs0dtlWooD52AE
         pZ9w==
X-Forwarded-Encrypted: i=1; AJvYcCWBCLoRYIO1eJmEz8YgLvTaZWEeBR4hXlNDZCAt/Q46Ch/tbuMi5mL52OyMYJTIA8yM5dfSYMGQcNgopHa/sw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzVKmgbcTt8nKlXFWcMJB+rtqD+bd3VcUYxZarTl40Khoy7/VTf
	O3kv5QfhN1qfutZq7cOUybsd+q6MK3DvYF2bdwNAlkbtO4FgyeEw+4rU+BrF7UmwDQ==
X-Gm-Gg: AY/fxX5JFSnWQSspVzuFoqsgAP76rb0Jh9I4Giraspp8+btjA4/VNK/eNdYx5sJbdOh
	rtiVLNPrpMWE9AzzFYfkD4liWzpuA5dZ7qxKyWQ4Kdzq664T6M64yno/1pfxj/GhYtePnesd5Cg
	DNu45VeUPUuCSbRN+FT9OBh606VoOyc9J21beRbxM5/cwhsUOeRVT3Cwx0iDr+ZOZTRg/YwgwOW
	DbKy1XSFLq4/stWY56og+tQLqQYy4IiFQc+vVoDDECPDCS+1xTeyIJz5fXgwqdgh5aIJHH7F0kK
	m38lYT0O27CLd7O6cEO0dP4yjZ4SqIZYBXxDugel9Fmc214jSVSO66Uge9rj0q7DKGz5WP9ghGX
	s9P+L+mHdVNPnsXE0BzDq2B1Q62jhpX0wbhkBauq+79uQqf78sdxZMG5jgVFegpdHY5B6Ypz8Y1
	CQu9t/J5rT6Bwu5KuhyjrOeyexIIEpdO1IWe9r5a9ISWQbpc71wMDUJqvTvf1bRUzB2q0b3RVbl
	+AR1xe4elqf+93OqIHPrg7c2IQ44vyLiESZPjhSOQ16iup6PNL5IsBM9g==
X-Google-Smtp-Source: AGHT+IGGCF0sHMt1+YYCpeAxQN9Ovdj+s2AiArjZinsNakQ8z+N2JPpr7xnF8T/yZnTmh07agmcy1w==
X-Received: by 2002:a17:907:1b15:b0:b73:9792:918b with SMTP id a640c23a62f3a-b8036f5fcf3mr4070078066b.27.1767149915064;
        Tue, 30 Dec 2025 18:58:35 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:49c0:3675:3f69:8ee2? (2a02-a466-4d7a-0-49c0-3675-3f69-8ee2.fixed6.kpn.net. [2a02:a466:4d7a:0:49c0:3675:3f69:8ee2])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b83926533b7sm450609966b.20.2025.12.30.18.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 18:58:34 -0800 (PST)
Message-ID: <f5322597-c6dd-494a-863b-2caf24363f2d@pardini.net>
Date: Wed, 31 Dec 2025 03:58:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/2] PCI: Configure Root Port MPS during host probing
To: Hans Zhang <18255117159@163.com>, lpieralisi@kernel.org,
 kwilczynski@kernel.org, bhelgaas@google.com, helgaas@kernel.org,
 heiko@sntech.de, mani@kernel.org, yue.wang@Amlogic.com
Cc: pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
 jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, cassel@kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20251127170908.14850-1-18255117159@163.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20251127170908.14850-1-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_185837_502001_B6F7A4FC 
X-CRM114-Status: GOOD (  11.44  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 27/11/2025 18:09, Hans Zhang wrote:
> Current PCIe initialization exhibits a key optimization gap: Root Ports
> may operate with non-optimal Maximum Payload Size (MPS) settings. While
> downstream device configuration is handled during bus enumeration, Root
> Port MPS values inherited from firmware or hardware defaults often fail
> to utilize the full capabilities supported by controller hardware. This
> results in suboptimal data transfer efficiency throughout the PCIe
> hierarchy.
> 
> This patch series addresses this by:
> 
> 1. Core PCI enhancement (Patch 1):
> - Proactively configures Root Port MPS during host controller probing
> - Sets initial MPS to hardware maximum (128 << dev->pcie_mpss)
> - Conditional on PCIe bus tuning being enabled (PCIE_BUS_TUNE_OFF unset)
>    and not in PCIE_BUS_PEER2PEER mode (which requires default 128 bytes)
> - Maintains backward compatibility via PCIE_BUS_TUNE_OFF check
> - Preserves standard MPS negotiation during downstream enumeration
> 
> 2. Driver cleanup (Patch 2):
> - Removes redundant MPS configuration from Meson PCIe controller driver
> - Functionality is now centralized in PCI core
> - Simplifies driver maintenance long-term
> 
> ---
> Changes in v7:
> - Exclude PCIE_BUS_PEER2PEER mode from Root Port MPS configuration
> - Remove redundant check for upstream bridge (Root Ports don't have one)
> - Improve commit message and code comments as per Bjorn.
Hi Hans,

I've tested on an Odroid-HC4 with a SATA SSD (via an ASM1061) by 
applying your v7 on v6.19-rc3 + Bjorn's 
20251103221930.1831376-1-helgaas@kernel.org ("PCI: meson: Remove 
meson_pcie_link_up() timeout, message, speed check" which is required to 
get the meson PCIe to work at all since 6.18). With that setup I get:

# hdparm --direct -t /dev/sda
  Timing O_DIRECT disk reads: 832 MB in  3.00 seconds = 277.33 MB/sec

I've an identical machine, with a similar disk (even slightly faster, on 
paper), running plain 6.12.y and there I get:

# hdparm --direct -t /dev/sda
  Timing O_DIRECT disk reads: 764 MB in  3.00 seconds = 254.26 MB/sec

I repeated those a few times, not very scientific, I know; but anyway:

Tested-by: Ricardo Pardini <ricardo@pardini.net> # on Odroid-HC4

I've also feedback from another user running with this series with 
success on a different meson PCIe machine, will ask them to TB as well; 
they had reported a significant drop in performance since v6.18 without 
this.

Thanks,
Ricardo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
