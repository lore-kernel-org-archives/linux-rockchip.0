Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62B46CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Nov 2025 20:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugEXfhSVGkUTciquL6JHjkU8O0FSRKkStVLfCtPf3Ro=; b=uDF1l0X+d1jX3Z
	mvHf1QsG9IDpiFftvSrmNI4NGxFl2Rrn4VLumIbpmwssPEqRCiTPpbbprahygzQv3fRLk/YPbxq76
	z5zxQRLpXoDPHKtyAQoKTqjKlMgKg4DJGVJegqStjUf7r7i+NAcKUZGKcWfXUWWgPOsKj/TON6duz
	wKWSpodgPYHyIwdYAtoShfFsY0d5BYqo4lsNBsiY2P+SE7maNvb7AmzdnlaSYGNIh/TbHnc6g4ZYy
	j3jYOIA4t+lrMREZPbN1EbIS5uO3oBM9T3CGRC/ebyUf4BVWLRFQtZT30RTxX/JdVSQnyMxMl2WoL
	qsS1ppC8/K7AGrSYTKwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG1aj-0000000AcfG-1yTV;
	Mon, 03 Nov 2025 20:55:53 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG1ag-0000000AceV-2MLv
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Nov 2025 20:55:51 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-76e2ea933b7so4882797b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Nov 2025 12:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762203350; x=1762808150; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T1FZmM9cdt+xj6V1Hd+gvwGWqSc0g8vu7TF1E04sPkw=;
        b=miRf5ow0zlWl0RpyYWvV0OtjaBsNFFArjysOhc7NSpRBofqQ+pwPzrADrxsovmsyhn
         nwBDVLldWTxiatJHydzMeTf2drFH9YHdXloHM/jMNI1/NwQDJ5zFFwpzjRFWCodbZn3C
         //EKMLwipFDiY7zs3XtzNtOW6+kvO6lBXBHUpk5qyKLO5G40CvzIjvUo7P+snDmlzIcL
         SqrHKQcHLanrpIa3wreZvwJLTECv2sOp64yRZ4lq4KQ7RKmQokCVn9h9m8Cu7XRCP9S4
         q0CT8XGtNMEk+PmUwp3BvuL1CMdSJDS9VwUUx6BpHIkw0FBS/q9I5i04K4OigWtLrtil
         6sNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762203350; x=1762808150;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T1FZmM9cdt+xj6V1Hd+gvwGWqSc0g8vu7TF1E04sPkw=;
        b=BqDxqVO0ZSX2Hz7zyCe8aJibKghJpqExPxdt+aDhAxJQSa7KqNTv14TazvGaYRKL27
         gj47teK9+3l+sNNiYaROTA4dKbEzrgCdXT1zYkZ34ocJYA34arhdCFk7HsiEo/ao2N1m
         8/WIFOP3D6moJ3EMWPSZE0wMh4cTOqytIpNwZgRSXQdXe/NLnhD5BskE6qKKP5AS2naa
         yido+oi5AM4RqpgC4IN0ACHtedPuy6LBVJZn6tFS5irH1TQQI4gUFvz2qplw0hgGpg4R
         fUMKE6zxFGMIGkHOzAb3pLIuQI5rCSFaZU/j+FfYVk9bXmKAqWoZ/10gDQavO1/2TD45
         07IA==
X-Gm-Message-State: AOJu0YzJ2sRZd8VKDNrmjV4PglFcJdfEg4EbhGmXRR9/Ab5KcLS2YBXo
	AAo9avu/jOOOYNYMkMOVlaOn0cHgUunJOSge+MBtWQvqv3wTLsLdYBN/
X-Gm-Gg: ASbGncuGuItujjKvNHhJOquj/jG8LbAbn2QVVcnn4VJQa+xFUJpJWZ+eeEAA64YVDVa
	f+r15K5fG9NQJSIUrb12YxDkSatLsSCCtLfK5/Qb4yQPcOkpcG6/AlMBFKhErCpr2lCUiPBXBcv
	hgDdVLKAbLS8NvieHAmIqG6xY+Qp4guzQ4uDoQzQ969/8zyVKzkvHNzL/X3rAdtF927QINBpCF3
	GwJ3mlT72Pwsmn9jwrzZo0QiZlO5QjOGYjvQiUWaInmwmud5/+ubOEugzjs07xD9sInCB9lE7Th
	6nS+ow3lYRPq3r5P8RVAKpaSjdjn8tt8O0dAYrbhOVEBRy9CaC2fubNj8wprOtbZSs4K5WgOBfu
	+4uSfL9WWfruCy7beOCTTdzwkyp6c3VFf7bqac2Vmg0QHX0+bg0vOkhljrbQPWQ==
X-Google-Smtp-Source: AGHT+IGYDVdNgNWocqi7ihWCrOOfROJ4jnfVXq0iLB5L8b6BF6bhkooF51PIKfTJUsi9RRg9FKFduA==
X-Received: by 2002:a05:6a00:468a:b0:7aa:19a9:566a with SMTP id d2e1a72fcca58-7acbbb5a284mr818412b3a.0.1762203349654;
        Mon, 03 Nov 2025 12:55:49 -0800 (PST)
Received: from geday ([2804:7f2:800b:e79::dead:c001])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7acd623e091sm315775b3a.54.2025.11.03.12.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 12:55:49 -0800 (PST)
Date: Mon, 3 Nov 2025 17:55:38 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH 2/2] PCI: rockchip-host: drop wait on PERST# toggle
Message-ID: <aQkWysK2XA01lkB8@geday>
References: <d3d0c3a387ff461e62bbd66a0bde654a9a17761e.1762150971.git.geraldogabriel@gmail.com>
 <20251103181038.GA1814635@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251103181038.GA1814635@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_125550_615033_881159A3 
X-CRM114-Status: GOOD (  20.75  )
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

On Mon, Nov 03, 2025 at 12:10:38PM -0600, Bjorn Helgaas wrote:
> On Mon, Nov 03, 2025 at 03:27:25AM -0300, Geraldo Nascimento wrote:
> > With this change PCIe will complete link-training with a known quirky
> > device - Samsung OEM PM981a SSD. This is completely against the PCIe
> > spec and yet it works as long as the power regulator for 3v3 PCIe
> > power is not defined as always-on or boot-on.
> 
> What is against the spec?  In what way is this SSD "known quirky"?  Is
> there a published erratum for it?

Hi Bjorn!

My proposed change itself is against the spec.

This SSD is known to simply not complete initial link-training with
Rockchip-IP PCIe. This is not officialy documented but based on
reports across boards (like the Armbian one).

I think it's the other way around though, it's the Rockchip-IP PCIe
controller that is quirky somehow and doesn't play nice with
many, many devices.

> 
> Removing this delay might make this SSD work, but if this delay is
> required per PCIe spec, how can we be confident that other devices
> will still work?

We really can't be sure there will be no side-effects to other devices.

> 
> Reports of devices that still work is not really enough to move this
> from the "hack that makes one device work" column to the "safe and
> effective for all devices" column.

I agree, and I knew from the start I would not get encouragements from
the community relative to this change. Still, it seemed selfish not to
share the workaround.

> 
> It's easy to see how *lack* of a delay can break something, but much
> harder to imagine how *removing* a delay can make something work.
> Devices must be able to tolerate pretty much arbitrary delays.

That said, the problem of quirky Rockchip-IP PCIe remains. The fact
that removing the delay makes it work with devices that previously
did not complete initial link training must at least point to a
resolution somehow, even if the present change is unacceptable.

I'll continue to hack around this, see if I can pinpoint exactly why
that delay screws up my initial link training.

Thanks,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
