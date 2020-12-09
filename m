Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45794C4361B
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 21:20:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DCB9F22C7D
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 21:20:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DCB9F22C7D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ds9DMFTGHq9SUcj8CD2bM7rr2H2iRH4hCAYk66XwsdM=; b=M3d/hnXyDEUEi+2gLPSQkxr2X
	hFME6WdKTK95xIwg722zKUgliasgsoxTSELaF3mIbkxdmVRhB29sfDAt8ej+IBcWROAPKnrrFLuTc
	q/zBnd1f1Os2lm/79T02HolkxsF4zSLDEYm5mvnpjWUxVbntCXQ9XmQg8goxNZTL7tHN/HvfUjN2Z
	rtBvuTWA87WDm/qseWniceG6MeQhnkwQH3q2jih0EuPDZR3JsSHVM8CZ9GJNmoqwtL76qeXGynHKR
	z1ore/CCw38iayn3fxmNDg3VhIXu62VXVZA9fyyvFWggSjsQurVRpjcOdHjynTxyseES2oGJRSNzV
	ZRfJCZxKA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kn6st-0004CA-9s; Wed, 09 Dec 2020 21:20:27 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn6sq-0004Ah-AS; Wed, 09 Dec 2020 21:20:25 +0000
Received: by mail-ed1-x541.google.com with SMTP id r5so3166642eda.12;
 Wed, 09 Dec 2020 13:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dgu5SGKx1gsYdy9j4dOrYrsjFJDAyhP/ryB0BUE7zio=;
 b=niQBzCOYtIl/hSI517HSDdPqg8oTrgM3dfRFRWH3fUdOBclueW5rO1xnYYbVKxAInH
 isd9w2yJkKDLEZ98RuhEakRekizvzPuzsJDwX7wiyIXVzRK6heZVnpwz3PNrrgiaId4P
 d7/rpIN+kmbcLiN/07eSzUn+jYBO048TqSHvFhh9i+ZNZa6kFaa/gGCp8o+nbA4nomyV
 kW2pjY8jqBAzm74LjOd6HBS8uTK71WBhGWe+iH3j1SyaYnISaxA2NqA1CSOS2T32aTD1
 HEsX/+nKGrYwAl2l9I01Eh+mZV2kBGwrVFkvI8J6qi8sPp7/OM8Ec7kyiHqsMlJhgVKP
 KtVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dgu5SGKx1gsYdy9j4dOrYrsjFJDAyhP/ryB0BUE7zio=;
 b=JMclD/UCvG6uNe8Zkygft3iRidA8r1QaGMEhgHM1qBpdpCF9SZ2pzmhsBD2P2ZtOyO
 qP17ZW2sSSGjgNfARCUfVoYIV5CKIbrsOyOuWTDd/Jl8t5zqw38I++wtRi9L8XKwvGve
 tdlkIcYsM8v65f5KKgXQ4hCZtylceRKiUi7XBHG+PRA2em8tBlgHYM5MB510bZfOfl0A
 PlFap7AkpqzDcDN539UHzTNi/kiq3pu9qG22YPVm0jS2RVBVIcAIQJLA/EyXDmPIUwfX
 iiTmFSMTVHQ8DpE2eo7GP+/HV5KOozUSx0vxCPW5ksL0CGNb9LOBIoVZJQoY38wIH3Wh
 OXiA==
X-Gm-Message-State: AOAM532ohogOyKtLXT/sakbkCWGtxEfTuMQhAmMd2Ntw6B/Uz27nxDH8
 l/mi6uxEeWVGAtwKi2rApWA=
X-Google-Smtp-Source: ABdhPJznqu5V3gX6VcnRSs31xSg7oHWhdE8I8tSsQuFGa09jBY2GusA8WWIa3CyUu6L7fV1c5sghOg==
X-Received: by 2002:a05:6402:149a:: with SMTP id
 e26mr3491125edv.150.1607548820494; 
 Wed, 09 Dec 2020 13:20:20 -0800 (PST)
Received: from skbuf ([188.25.2.120])
 by smtp.gmail.com with ESMTPSA id mb15sm2561294ejb.9.2020.12.09.13.20.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Dec 2020 13:20:19 -0800 (PST)
Date: Wed, 9 Dec 2020 23:20:17 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express
 drivers
Message-ID: <20201209212017.vx7dps3jasjcwg6j@skbuf>
References: <20201209202904.2juzokqhleusgsts@skbuf>
 <20201209205913.GA2543692@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209205913.GA2543692@bjorn-Precision-5520>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201209_162024_442399_0060AAF4 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
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
Cc: kw@linux.com, heiko@sntech.de, benh@kernel.crashing.org,
 shawn.lin@rock-chips.com, Alexandru Marginean <alexm.osslist@gmail.com>,
 paulus@samba.org, thomas.petazzoni@bootlin.com, jonnyc@amazon.com,
 toan@os.amperecomputing.com, will@kernel.org, robh@kernel.org,
 lorenzo.pieralisi@arm.com, mpe@ellerman.id.au, michal.simek@xilinx.com,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 rjui@broadcom.com, f.fainelli@gmail.com, linux-rpi-kernel@lists.infradead.org,
 Jonathan.Cameron@huawei.com, bhelgaas@google.com, jonathan.derrick@intel.com,
 sbranden@broadcom.com, wangzhou1@hisilicon.com,
 Michael Walle <michael@walle.cc>, rrichter@marvell.com,
 linuxppc-dev@lists.ozlabs.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Dec 09, 2020 at 02:59:13PM -0600, Bjorn Helgaas wrote:
> Yep, that's the theory.  Thanks for testing it!

Testing what? I'm not following.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
