Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48F41C52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 15:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Cc:From:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QeQrjqmGrGwSlqvUa7Vo34Kwo1s3uXknkZF1L+u90sE=; b=NdYb5HHH2ArsRKusWiBIuQQw9X
	G92crm9BLIqaudbdMqyl8ds9RTA+hG3ybGrWy2gRqXPSiC+PPbq/M3XFVicSwF4sZniEchWrylaRE
	EAP+sPzfbcmkDcYFI7cu8H3t2lBjnHYo6cLlTKPVxSJ040jIEdoKimXT5Yr0TPCr3VmZsYHcG6cOc
	pQTKJpVCfATOM/5/DtWQWuZxBWoyMsIpMHie9rHYzz6u0y4e7+/yQ8KtsOFeIevant/mN+8eLdv4t
	EiTCXQAqKfw04EOaKY62mlZA9KWbQBxy5hcnNiW9xDyMJxsiAN/n4ew+0L+Z0zSt156DU2yaM8Fjp
	i2PQvtLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdX6A-00000000lkn-47iz;
	Mon, 12 Aug 2024 15:36:42 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdX68-00000000ljs-21lh
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Aug 2024 15:36:41 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5b391c8abd7so5248673a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Aug 2024 08:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723476998; x=1724081798; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:subject:cc:content-language
         :from:to:user-agent:mime-version:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jF5nZUolDaPZn/To4WYvVkJb8B8u4cb6IPWH489t0Jg=;
        b=BeuU6Ngz6oI8g7zJKUxgezLdHm5jW1SgKW3PR0K2a3TOE+wNuytmvOzDES/SoMzURK
         stqiIMetXUTrJ0bvHUAyQdmidb/uefHOJdSTFYCoHq2H3Nmdwj6yenRymrMxXq35GKos
         1/Cfqssy5uzzju9SGl1s4Cetf77EXzKayr2AjkUnJE9txJuutHXSA5/FLCjHxY04su2c
         Dq4FWs99d9WJg8X9qvWRK9h/YI1TEAFN6ZknzhlVAvDshoE2vWlDQ/qfDNOHI8MJCzMY
         hbxnNL4NMcaf94oik3kzV6Co1v5P0u/wnPvPiDmfUOyvcMwFuELN4cL08NsbOovuT4gp
         ++hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723476998; x=1724081798;
        h=content-transfer-encoding:organization:subject:cc:content-language
         :from:to:user-agent:mime-version:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jF5nZUolDaPZn/To4WYvVkJb8B8u4cb6IPWH489t0Jg=;
        b=fVnsNEvWz5pkhrn1JhxcD+8WCjUJ13S6IiteAii8/cVRoaE5LJ0K+mOrD6Sc3p0e2F
         h6YOXpG9cxti2lBfZbpZmrAV8IJJd+Eut+gTnEoVmxFwsHUJ4Jv8sfMBHZsjQ1QuRlfS
         Oh3JVOBQjAPw0/x0R0QQSBLYaYF8VcCFiuc2BURm+GqATfGJwIvQJuUtL/ETO8VjAxPx
         9BfwRYmV+e75EX0qxzIwRCduCgS8BtMT5Lbj9vySUoh0Mt65zRfNo942Qtxb2pvez3rH
         NXSO4kQ1lxZENI4lCkVqur4nRyMXNpydIIrtVFf9ia1jbLKZR13kGVFNTy4US+6oZsFA
         qveA==
X-Gm-Message-State: AOJu0YyOrKpPJ7aYT7g1fs3Q4CHJk0tIz5dVKB/Vbn7ox1MihRbTRS8o
	UjhaOHxBg+/+q3mBcDdenfxCM4tUQkkgTdc0YICuDsMJ6w8slYRNUV/B5sMdUh3L9ZwQAymKgaE
	m
X-Google-Smtp-Source: AGHT+IHenAz7lC801LTe2gaQvZ2a/HLHzJyaW53V2kEKUqKYipU5nEqmF9b+NnKvVr/rZLB6AUUNXw==
X-Received: by 2002:a05:6402:354f:b0:5a1:7570:8914 with SMTP id 4fb4d7f45d1cf-5bd44c27370mr545418a12.11.1723476997480;
        Mon, 12 Aug 2024 08:36:37 -0700 (PDT)
Received: from [192.168.200.25] (79.186.29.241.ipv4.supernova.orange.pl. [79.186.29.241])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bd187f35aesm2213760a12.7.2024.08.12.08.36.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2024 08:36:37 -0700 (PDT)
Message-ID: <d99fcb81-d864-4336-afe0-046c2136a4d7@linaro.org>
Date: Mon, 12 Aug 2024 17:36:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Heiko Stuebner <heiko@sntech.de>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB, en-HK
Cc: linux-rockchip@lists.infradead.org
Subject: DeviceTree for NanoPC-T6 LTS
Organization: Linaro
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_083640_568715_12FB43AD 
X-CRM114-Status: UNSURE (   8.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

I bought FriendlyELEC NanoPC-T6 LTS recently for some development. Got 
Fedora 'rawhide' running there with Linux 6.11-rc2 but got hit by some 
issues.

SBC works with recent UEFI build (from edk2-rk3588 project) both in ACPI 
and DeviceTree mode. The problem is that there are components (like 
SD/eMMC and/or USB ehci/xhci) working in one or another.

I have spent some time trying to get DT mode working properly to find 
out which values I need to change for ACPI mode to work. And got to the 
point where I have a question:

Can we make rk3588-nanopc-t6-lts.dts file?

Differences between T6 (2301) and T6 LTS (2310) may suggest separate DT 
files. There is a USB hub on 2310 one to provide USB2 for m.2 type E, 
two ports on internal header and one of external ports. Hub is powered 
by vcc_3v3_s3 line. There are no mini-pcie and microsim slots on 2310 as 
well. SPI flash is present by default.

Please keep me in Cc: as I am not on linux-rockchip ML.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
