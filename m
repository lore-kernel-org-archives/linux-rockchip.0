Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34FA4EE645A
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 18:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYyoh6KAKkyQ4ev5ED4SPwahekIYqsNDNwKU7cjQ3bM=; b=L/81La4W912asy
	F6WvORO4RVMm683O9/4/Ssmb3qRbzqlgpafWsl9NzItgz1zkcZptkwevOOBf3Wyd7C8NciJfqSnLR
	hZUPT6HOzLYffmoOYvk2wfHHBYAORZXMyuytE6IuRvcwEPG82hvMNTEduo8gNUhp3rKYsyiQcAUeH
	bVSWHntVAgH+/kwLayRFclkFA8TiVHI0R2H4OO6/PoHFiXSRHVevTvWIhcOur6QGeGtXYFoD2fO1T
	T+fxfo0il6R9T+p18h2Z0Y7elcoEMmIh63Nohd8a3BsLd+gDPrsyV2LExmcmn/QsTa2OG5Dm6b4gR
	LBQ6PToHc+8vlSH0EIVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vb0e6-00000006E8F-3vK9;
	Wed, 31 Dec 2025 18:10:06 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vb0e3-00000006E7m-1osq
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Dec 2025 18:10:05 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-4f1b1948ffaso74454011cf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Dec 2025 10:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1767204602; x=1767809402; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ler8qDCPRGHJreOe8sxM5+nTcHTkypYD5vwOvTuWhHo=;
        b=WJ2BjiRNdKGVi4cIZiQ4i6xih5g+G0/aeeV9akc/dSlcBVDXJrITcFhtNt4H0fM4wU
         AFIBcqhlPrrwlEwhf82zs6aAAiSVY6gva/9d4vdNjWAlMM2JEH3ASYXmjsvau8+1Uodo
         HXXSsPXO3hu5mUNgPrsSyiltmpIzp5nz6/WYNWBQwIZZTPphpBnJCdA4+OxKUftO2gGM
         4CPvGq8w+Vb98aYAi46LxGncHInHfh0p8nc6uI4vRVrs+ZwguR5ygD+Y7pQbonHe4z5Q
         SlQ7xCGXeB4tRjTK+KeeLjvj9orueG8GHmq/W5YANCscWniemwmCDGdDZv94SrFfC2YF
         vBmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767204602; x=1767809402;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ler8qDCPRGHJreOe8sxM5+nTcHTkypYD5vwOvTuWhHo=;
        b=Xr+PaVmOTkVMdgrYTLHDSdHJQIDuUi814aWfMX5SOrXX4onujr6pOK/51K8QW8WoVM
         O+QugyXp5Vx6AVotXb3oeetSXOEYEnqwcO3o4RajwOQL/db5gWN7DGtX80qQE48ppL+R
         s9z+ohvgTkpMpRr9JKpCUtQB+etdmhZVow0D38/LDydnjJ4+YgxodCoykP5dT4YM65OH
         Hy3vz89MzEHI58vsH9l2NKqByHSaoawgJL945mvCYA4pQe9y4Qf8m41lD0coh7M+msGf
         WOfFR9RKfAMHV/ofe2ROhGjvWHGCtKhVS2WP/K/DNZ4w30PSuCsGgSHYwTWEpQQ94Ll3
         mXMg==
X-Forwarded-Encrypted: i=1; AJvYcCVpMMqMpRvr1s3GIa6wZR1+ksR6vNmc++Q8nJuiSmVF0esNGRuv+edYAm4C0mrRppNaZRCgGKxra/EeUOZpag==@lists.infradead.org
X-Gm-Message-State: AOJu0YwadCEpPzhLl03FZPSLUjFFa+iX+exTEhi1lJ6AJUgdcb9WxCwK
	dutSFkTxodUfnwkVIPWLsA4gQemAXmFuCS4QLTfGr8j0eNbwVn35VOs6bjK3rbRg6Q==
X-Gm-Gg: AY/fxX7cXgmwObRiXblK6UhwqVbegS4LcAPxLbrOqaE+GVbK6dhoTVykCrXhU7AtM+v
	IpdCP4ZWZbOhOAsK5atx67xufIMk5bMZHQYXsdAdAee3voebUw5t0sWCV0ovhswHyB9rnOiOxiN
	JtiY2BKR1vCVrvODE8tcCQNyBxHyDpm0ILXW6fpKr7aHjbloxxjE/RDHXDm0pM4XrJTv8dA5Qx5
	UYOjJ82WZ8LBrEplNhbuHx8D6WxK12SAYiuGeG7y8T3PvFuA67zDJ1u2PV9WeORSCe4kXSdTjX4
	T0Z2C1o1KejNAos2F7w70acVvpsXZMHIRGJHeSDEJ12wJb0x5A43bMQ2ts2+Ppv7FnXKbSam+1b
	6HebEu5eV6Uxyk8gYoOXv1HA+qMLBuoMDQr27sBLnA/Dp+M/NTdwP5vk2FGRIOK0+8sMvyTY+py
	TFJ37og+NAVr6c
X-Google-Smtp-Source: AGHT+IEruzdijXHePGAvKPLGhZbAiM2zIbDD/ICikBW9QEM/BXuzXL6NghqlUqJFyVh2UeSk0b8zwA==
X-Received: by 2002:ac8:5c81:0:b0:4ed:e5c1:797 with SMTP id d75a77b69052e-4f4abcc3eedmr535573051cf.23.1767204601682;
        Wed, 31 Dec 2025 10:10:01 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::7e72])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac532d08sm261378751cf.6.2025.12.31.10.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 10:10:01 -0800 (PST)
Date: Wed, 31 Dec 2025 13:09:58 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Huacai Chen <chenhuacai@kernel.org>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Shengwen Xiao <atzlinux@sina.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
Message-ID: <1a2aa1e7-7201-47a1-b64c-2a60426caded@rowland.harvard.edu>
References: <20251230080014.3934590-1-chenhuacai@loongson.cn>
 <2025123049-cadillac-straggler-d2fb@gregkh>
 <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
 <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
 <DFCKZ1I7C83G.1DUX9IT96CYZ3@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DFCKZ1I7C83G.1DUX9IT96CYZ3@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_101003_476905_522E7C42 
X-CRM114-Status: GOOD (  15.68  )
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

On Wed, Dec 31, 2025 at 06:33:34PM +0100, Diederik de Haas wrote:
> One of the issue is that I don't (fully) understand how this (should)
> work. F.e. I wondered about all the PCI 'references' in your explanation
> (thanks for that :-)).
> 
> I (also) wondered why the number on Quartz64-A was lower, but that
> actually has a PCIe slot ... with a USB3 controller card in it.
> 
> If I do ``lsmod | grep pci`` on my PineTab2, I get zero hits, but I do
> get hits when doing it on my Q64-A.
> 
> On my Rock 5B, I get 1 hit, "phy_rockchip_snps_pcie3", but that has a
> NVMe drive connected to it. And I have a (working) keyboard connected
> via a USB2 port. And/while I do have the warning ...

I can't say anything specific about your systems without a lot more 
information.  However, I suspect that any problems you are running into 
are not related to that warning.

Alan Stern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
