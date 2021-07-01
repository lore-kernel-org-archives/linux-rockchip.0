Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D013AC11F64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 14:59:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9659761221
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 14:59:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9659761221
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J8ZzVTFOIhdRO08d5scBbOiMgSGc15xYgynRaK557tU=; b=JoBQeVTZF2G3S6LzZ8pJ3xb2kj
	bKHMS4CXOx1ZSwrGBsPYGITK8PWqZdZPXzFECHZ1W5Al/dQMwdN0R+Iq0MkKz/mgCE/RujqCD9FEq
	3idokBJfR+IMULIqhXaz2VClJwtEZkg7g7Q6gKMW7zqPpMhgg6O5k7TxTTS9XKv9/DL+jxvu/R6rA
	2m19NcGsL+PDD5hs0DGwLTthsa1DtbwAZo6PK9hTdH1EFarwpep936KBO2QFTuQSsVxyJtsBdwzcJ
	D/quEJbrXuz4u6o8MXUsqCTEOBi24reFOKaRAW4aUum0H9GC1wx6WtGyUDsphSwf9bEZB9Bj+SUW4
	fiehFDaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyyAL-0008Ln-8t; Thu, 01 Jul 2021 14:59:45 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyyAH-0008KS-6o
 for linux-rockchip@lists.infradead.org; Thu, 01 Jul 2021 14:59:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625151579;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IVh85kthu0SpW7UY6smgM11I1yNN5lgiNNeNgndC7x4=;
 b=FnbVaaEUtTxLffeLXdycmyQ0IMLiUFqROzWEVmzdb8ZThmSsN05G/3SIStX9pBi4kQx5FE
 HbXlB6U82rD/wnlpmqZ5yzou7K232drvaT0gGQP4M9R1avcz5nskClvW9UVWRDSQPTxbWp
 m9ZWft0A+JLRUQBHPqB7wD1YGwsk5G4=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-291-yVaqsDpBOOek_fX3cpI15g-1; Thu, 01 Jul 2021 10:59:38 -0400
X-MC-Unique: yVaqsDpBOOek_fX3cpI15g-1
Received: by mail-wr1-f72.google.com with SMTP id
 g4-20020a5d64e40000b029012469ad3be8so2699570wri.1
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Jul 2021 07:59:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IVh85kthu0SpW7UY6smgM11I1yNN5lgiNNeNgndC7x4=;
 b=JKlAGeGlC3XU4P8muOwySjADxAO+46HExbV0HedUMxCyVUyAnpKb6rfq9iPDZ/wUOB
 twQ/PqGqkZPIAk1E9Oor/LkdxSZ04al66heLSMI+Lyqy2vqz3FyvSiv9epifa4zSsoS/
 A1B+wMdemTwfqW86p+8oEcErwYBPxNH30HW1z8X14xIBlK+WeCzR8ceTKfiJTn2Fcejh
 IqpW9Zlbddlp32LOO8s2+zAC6r7JoBjerMdJqvrVMzWsFHLswifcprSxLI282DJ2iOwJ
 9aq4e52c5IZ0S+MbawMS55wwUJ+vAfnRjlsFClh/zUnKiGA+l5mZANImArJM8hxw403K
 A/yg==
X-Gm-Message-State: AOAM532xh/VxeWOoQkf81MwUQQ2ZiDzDuvwHPxwNvrhdIdQhqnu7QOhH
 ifhqY5Q1cRSKTDLhQza1f7AkJm4RCktxfcpcMI8FF5tW/XrLJrgdORHW2E9Daw3gjqeSCN7uokQ
 e9u++PTvkMitPC5dNrY0IXWA+gne12MCy
X-Received: by 2002:a7b:c39a:: with SMTP id s26mr123462wmj.115.1625151577094; 
 Thu, 01 Jul 2021 07:59:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyeHU3WCUYY7UnaCN/G0uYLtwdgKJ2wXf9QG99tZjlIEUdpQJOc/y9rZPsTlaSCWiCikljylg==
X-Received: by 2002:a7b:c39a:: with SMTP id s26mr123429wmj.115.1625151576888; 
 Thu, 01 Jul 2021 07:59:36 -0700 (PDT)
Received: from [192.168.1.101] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id n19sm277863wms.4.2021.07.01.07.59.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 01 Jul 2021 07:59:36 -0700 (PDT)
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>, Jingoo Han <jingoohan1@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org
References: <20210701135949.GA51123@bjorn-Precision-5520>
From: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <747df123-0aa0-7cb7-9fb3-f13c849894e5@redhat.com>
Date: Thu, 1 Jul 2021 16:59:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210701135949.GA51123@bjorn-Precision-5520>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_075941_385286_6BADC6B9 
X-CRM114-Status: GOOD (  18.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 7/1/21 3:59 PM, Bjorn Helgaas wrote:

[snip]

>> The IRQ handler is not called when unregistered, but it is called
>> when another handler for the shared IRQ is unregistered. In this
>> particular driver, both a "pcie-sys" and "pcie-client" handlers are
>> registered, then an error leads to "pcie-sys" being unregistered and
>> the handler for "pcie-client" being called.
> 
> Is this really true?  I think that would mean CONFIG_DEBUG_SHIRQ would
> not find this kind of bug unless we actually registered two or more
> handlers for the shared IRQ, but it's still a bug even only one
> handler is registered.
> 
> Looking at __free_irq() [1], my impression is that "action" is what
> we're removing and action->handler() is the IRQ handler we call when
> CONFIG_DEBUG_SHIRQ, so it doesn't look like it's calling the remaining
> handlers after removing one of them.
> 

Oh, you are completely right. I wrongly assumed that it was for the other
registered IRQ handlers but reading the source is clearly how you say it.

I now wonder why when debugging this I saw that the "pcie-client" handler
was called when "pcie-sys" was unregistered...

But anyways, you are correct and I'm OK with the text you shared.

Best regards,
-- 
Javier Martinez Canillas
Software Engineer
New Platform Technologies Enablement team
RHEL Engineering


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
