Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548ADC63777
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 15:30:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C20B62076B
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 15:30:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FzQoZovN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C20B62076B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rnyuqXAzYkjmEnWYP+nEobmMmpZuiCvtiRdQTg5Izjo=; b=FzQoZovNysagFECDxOEdSyIct
	wydu04oz4D1EdEJgIVJdUKvvPxeSnKNucTEApc1foma2MrdfcUtnxPUm0njGIM85KMWfRO37n2xRq
	aRbf0y2jwvb8nelz9OJMbVQeQm+LAi3ojGl3h5xiJ62wyl3C7HHbDa/3N7nb0sQV9qnZtYxLdQnhE
	Zw5rQMNS57HHGFBYg/0vuVmu4kut+fLetcn4DDnTvxleYwRawtxynx0w0GIfQrKwmrMB71g621ORo
	J8bH4HEjvfjWGS39bkcqpJX4F7xtWHniLR7E10T0u7Cjipid/7BxCPZyUa4Wl7OAdGFRBKvVqY6sd
	RYTQciTVQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjl8R-0007mP-NH; Mon, 30 Nov 2020 15:30:39 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjl8K-0007kf-JB; Mon, 30 Nov 2020 15:30:33 +0000
Received: by mail-wr1-f65.google.com with SMTP id o1so2795020wrx.7;
 Mon, 30 Nov 2020 07:30:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=aYHHxJmw979e+wSJRiDQN73bZ6bHCfBL6+c7qQzjNRM=;
 b=hv3f8YNzimp8sgaoP7yYobsRVGV4S57nefM6+X46dWL/lp3dKY2Nh9eFRuqyAjR/U/
 QCCfpvJUlUnoq+QfxBsbCZiX2ShCBqnmOYU2+5jcjfUn83JUxk33dnVxRX5CiXo0r4Fz
 rG6g5R0bLrkAcKPr9BJZcgEyFKYtrJRev0jolpf2iZL/C+vOURppqwXfaei1xhrXGymA
 IbXJOvmiferqqC+tW0OFfIGN0A+/9ovDiOq4rJcAsKrTaxwaa39TzlnsmQmgQR7iOUah
 LBF8aGyuewIYjBsvflVJLD/nhSyuH7PsgY77J7RYz230fKQdRMnr73JGuLoGSC9T3Wh9
 d8Cg==
X-Gm-Message-State: AOAM533x7hgm7c2K/LQb0JcpWrSO+sn/lw4rImhTmMWsSZzYIUM6PZ4F
 Vjek6ck9mNsV6NtzqN6phXE=
X-Google-Smtp-Source: ABdhPJxDgu0JUhfBnd1JT0sM9EnLMunvMJmxP1ptyZLeuiHRBoyRMeT9fOud0TpT6HDh8Aw84e0fEg==
X-Received: by 2002:adf:9d49:: with SMTP id o9mr29398963wre.413.1606750230899; 
 Mon, 30 Nov 2020 07:30:30 -0800 (PST)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id k11sm27836582wrv.88.2020.11.30.07.30.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Nov 2020 07:30:30 -0800 (PST)
Date: Mon, 30 Nov 2020 16:30:28 +0100
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v6 1/5] PCI: Unify ECAM constants in native PCI Express
 drivers
Message-ID: <X8UQFER3uccborBf@rocinante>
References: <20201129230743.3006978-1-kw@linux.com>
 <20201129230743.3006978-2-kw@linux.com>
 <20201130110858.GB16758@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201130110858.GB16758@e121166-lin.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_103032_677623_A64739C9 
X-CRM114-Status: GOOD (  16.15  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Paul Mackerras <paulus@samba.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Jonathan Derrick <jonathan.derrick@intel.com>, linux-pci@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, linux-rpi-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Scott Branden <sbranden@broadcom.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Robert Richter <rrichter@marvell.com>, linuxppc-dev@lists.ozlabs.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTG9yZW56byEKCk9uIDIwLTExLTMwIDExOjA4OjU4LCBMb3JlbnpvIFBpZXJhbGlzaSB3cm90
ZToKWy4uLl0KPiA+IFJlZmFjdG9yIHBjaV9lY2FtX21hcF9idXMoKSBmdW5jdGlvbiB0byB1c2Ug
bmV3bHkgYWRkZWQgY29uc3RhbnRzIHNvCj4gPiB0aGF0IGxpbWl0cyB0byB0aGUgYnVzLCBkZXZp
Y2UgZnVuY3Rpb24gYW5kIG9mZnNldCAobm93IGxpbWl0ZWQgdG8gNEsgYXMKPiA+IHBlciB0aGUg
c3BlY2lmaWNhdGlvbikgYXJlIGluIHBsYWNlIHRvIHByZXZlbnQgdGhlIGRlZmVjdGl2ZSBvcgo+
ID4gbWFsaWNpb3VzIGNhbGxlciBmcm9tIHN1cHBseWluZyBpbmNvcnJlY3QgY29uZmlndXJhdGlv
biBvZmZzZXQgYW5kIHRodXMKPiA+IHRhcmdldGluZyB0aGUgd3JvbmcgZGV2aWNlIHdoZW4gYWNj
ZXNzaW5nIGV4dGVuZGVkIGNvbmZpZ3VyYXRpb24gc3BhY2UuCj4gPiBUaGlzIHJlZmFjdG9yIGFs
c28gYWxsb3dzIGZvciB0aGUgIi5idXNfc2hpdCIgaW5pdGlhbGlzZXJzIHRvIGJlIGRyb3BwZWQK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5eCj4gCj4gTmlj
ZSB0eXBvLCBJJ2QgZml4IGl0IHdoaWxlIGFwcGx5aW5nIGl0IHRob3VnaCBpZiB5b3UgZG9uJ3Qg
bWluZCA7LSksCj4gbm8gbmVlZCB0byByZXNlbmQgaXQuCgpPaCBkb2ghICBBcG9sb2dpZXMuIDop
Cgo+IEpva2VzIGFzaWRlLCBuaWNlIHBpZWNlIG9mIHdvcmssIHRoYW5rcyBmb3IgdGhhdC4KPiAK
PiA+IHdoZW4gdGhlIHVzZXIgaXMgbm90IHVzaW5nIGEgY3VzdG9tIHZhbHVlIGFzIGEgZGVmYXVs
dCB2YWx1ZSB3aWxsIGJlCj4gPiB1c2VkIGFzIHBlciB0aGUgUENJIEV4cHJlc3MgU3BlY2lmaWNh
dGlvbi4KPiA+IAo+ID4gU3VnZ2VzdGVkLWJ5OiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29n
bGUuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIFdpbGN6ecWEc2tpIDxrd0BsaW51
eC5jb20+Cj4gCj4gSSB0aGluayBCam9ybidzIHJldmlld2VkLWJ5IHN0aWxsIHN0YW5kcyBzbyBJ
IHdpbGwgYXBwbHkgaXQuClsuLi5dCgpUaGFuayB5b3UhCgpLcnp5c3p0b2YKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
