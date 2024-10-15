Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31410D21690
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 13:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCntZXp5UgeUVQNKobssVQPPXEyLgSbJSchvHeMroyg=; b=GjRXRaTuFQanqu
	vkMyQuptX6Omdzy148+l1XT+S/jTyaFNrpU12L8a6vzv44UaeXeSM1dot3rzkAbxArJhWTCS/20DY
	nx2aPdiQfwoUTT+6Owq7BT24m9y7GgFMjociudiTqRZIOBxQy0ROybjRV9s64o9CGgT0zpAZDRAPR
	3UNFJkqXLGNBNiAw75LV7qgAOabXu2RN3/F2mxv1hr/f1gDBXlgaXqAhNLJiGCoysOUWfokNUzdHM
	VdUJj5/qPQQbo7ftihJQ2iQAdgDj8m1lw+4yr3SRobHDp4plJlVT9W4666ebKsFZxCBEu57Y9/Vju
	9jGwhS558e/0FacrDa2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0h9X-00000008GP7-1PHD;
	Tue, 15 Oct 2024 12:59:55 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0h9U-00000008GNV-22Pw
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Oct 2024 12:59:53 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-20cdda5cfb6so22164655ad.3
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Oct 2024 05:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728997191; x=1729601991; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gQ2ExxafYH8pysjVtyTxWl0xH3aoVpQcW06brvyTYc4=;
        b=srcpZfCstUD896/1gISGRyG1+i76yFUPUMoVJENPxglhzJ2OS5SWBz8h2gm6P4YJpk
         fRMr1/aKLoWo0xU+3WAl2WnsRdAhBzWSBKC3TIxGy68o6/Mp9DInZadSa9eO3Htgm60L
         tUi5ykpu6z5Ig9VL+l8t8toyfMQYH41BcQRlo5AXFaE+bx1GL+yJUWq7G5XsRfYPkBli
         SNiXt012o7oCc3sPHrBezoIbHez6GTq+zGQL+URKR9kM2vphbACs5aiVb51ZNy0jGMWL
         ZcoeKSvBEEpaiWFo9LI6rfCE8iTMQYHRewzQ7iWAGS6Li7D1INlODmZ/10GE6Fh2r5MO
         LcbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728997191; x=1729601991;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gQ2ExxafYH8pysjVtyTxWl0xH3aoVpQcW06brvyTYc4=;
        b=FSLwv0fh7iOb4AlnDiDS/fQ0n9oGKExKoy+HMyRQcebJv6Y7Y9KaR2pQqFvyIP89OL
         c1s4ZzJvoBMK4/m2jfuXOVm2BjniDUnvbvCCKSJl4zHTzlwooSJyBOJB4MhpDS4OvpFK
         1+ozc1zJ7iHzjFQ262la2fd4AOpV+ipGngTXwDkJ/fw9e/IuISsyzIAQM8Cte7+t1DX6
         oMV18mSdwsSR/bpK0I4tBR0dyH2cZeaqcVINjUaSusaDfkpJhIR+MPUxZwMynPSoGz+B
         bU3mA91EoYnH8wKUB0RnD+6JVaJzuQDwZxUKB7dw6WHsifuvZ/g0TEKFs67ELvGbOzbg
         mD1g==
X-Forwarded-Encrypted: i=1; AJvYcCUN8bAI6SnpnONNxnFvh17fb/A2hvM2A2tWfOBjeXrHXKBCan6fhrUZx0y7TEi4uEzLqq9Wrg6gC0Bg+UYLfQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yya11obJAmKMLw21XKd25DZGQdYT4FKMoRAyPV6egjQ32zvxc3j
	7xN6SRmFzEVXZNf90CA+Imh/x29f77peX2ZdKW+CFAWPDA651vNtiRczYVYBXQ==
X-Google-Smtp-Source: AGHT+IHkGuzbGfZUwoftrk6pBddGB0A/KcBGkupentXwPJMsPJLg9KJR/+RBkXTL5DL7BPN+340c5w==
X-Received: by 2002:a17:903:2301:b0:20b:7e1f:bff2 with SMTP id d9443c01a7336-20ca145921fmr210209595ad.17.1728997190673;
        Tue, 15 Oct 2024 05:59:50 -0700 (PDT)
Received: from thinkpad ([220.158.156.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d17f84f5bsm11534205ad.7.2024.10.15.05.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 05:59:50 -0700 (PDT)
Date: Tue, 15 Oct 2024 18:29:45 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v8 2/3] PCI: rockchip: Simplify reset control handling by
 using reset_control_bulk*() function
Message-ID: <20241015125945.llbyg6w7viucw5rh@thinkpad>
References: <20241014135210.224913-1-linux.amoon@gmail.com>
 <20241014135210.224913-3-linux.amoon@gmail.com>
 <20241015051141.g6fh222zrkvnn4l6@thinkpad>
 <CANAwSgSEkFtY6-i3TOPZbwB5EuD4BHboh_jsTwByQw7NLLrstQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgSEkFtY6-i3TOPZbwB5EuD4BHboh_jsTwByQw7NLLrstQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_055952_562556_36936E35 
X-CRM114-Status: GOOD (  27.63  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBPY3QgMTUsIDIwMjQgYXQgMDI6MzA6MjNQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBIaSBNYW5pdmFubmFuLAo+IAo+IFRoYW5rcyBmb3IgeW91ciByZXZpZXcgY29tbWVudHMu
Cj4gCj4gT24gVHVlLCAxNSBPY3QgMjAyNCBhdCAxMDo0MSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFt
Cj4gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBN
b24sIE9jdCAxNCwgMjAyNCBhdCAwNzoyMjowM1BNICswNTMwLCBBbmFuZCBNb29uIHdyb3RlOgo+
ID4gPiBSZWZhY3RvciB0aGUgcmVzZXQgY29udHJvbCBoYW5kbGluZyBpbiB0aGUgUm9ja2NoaXAg
UENJZSBkcml2ZXIsCj4gPiA+IGludHJvZHVjZSBhIG1vcmUgcm9idXN0IGFuZCBlZmZpY2llbnQg
bWV0aG9kIGZvciBhc3NlcnQgYW5kCj4gPiA+IGRlYXNzZXJ0IHJlc2V0IGNvbnRyb2xsZXIgdXNp
bmcgcmVzZXRfY29udHJvbF9idWxrKigpIEFQSS4gVXNpbmcgdGhlCj4gPiA+IHJlc2V0X2NvbnRy
b2xfYnVsayBBUElzLCB0aGUgcmVzZXQgaGFuZGxpbmcgZm9yIHRoZSBjb3JlIGNsb2NrcyByZXNl
dAo+ID4gPiB1bml0IGJlY29tZXMgbXVjaCBzaW1wbGVyLgo+ID4gPgo+ID4gPiBTcGlsdCB0aGUg
cmVzZXQgY29udHJvbGxlciBpbiB0d28gZ3JvdXBzIGFzIHBlciB0aGUKPiA+ID4gIFJLMzM5OSBU
TSAgMTcuNS44LjEgUENJZSBJbml0aWFsaXphdGlvbiBTZXF1ZW5jZQo+ID4gPiAgICAgMTcuNS44
LjEuMSBQQ0llIGFzIFJvb3QgQ29tcGxleC4KPiA+ID4KPiA+ID4gNi4gRGUtYXNzZXJ0IHRoZSBQ
SVBFX1JFU0VUX04vTUdNVF9TVElDS1lfUkVTRVRfTi9NR01UX1JFU0VUX04vUkVTRVRfTgo+ID4g
PiAgICBzaW11bHRhbmVvdXNseS4KPiA+ID4KPiA+Cj4gPiBJJ2QgcmV3b3JkIGl0IHNsaWdodGx5
Ogo+ID4KPiA+IEZvbGxvd2luZyB0aGUgcmVjb21tZW5kYXRpb25zIGluICdSb2NrY2hpcCBSSzMz
OTkgVFJNIHYxLjMgUGFydDInOgo+ID4KPiA+IDEuIFNwbGl0IHRoZSByZXNldCBjb250cm9scyBp
bnRvIHR3byBncm91cHMgYXMgcGVyIHNlY3Rpb24gJzE3LjUuOC4xLjEgUENJZQo+ID4gYXMgUm9v
dCBDb21wbGV4Jy4KPiA+Cj4gPiAyLiBEZWFzc2VydCB0aGUgJ1BpcGUsIE1HTVQgU3RpY2t5LCBN
R01ULCBDb3JlJyByZXNldHMgaW4gZ3JvdXBzIGFzIHBlciBzZWN0aW9uCj4gPiAnMTcuNS44LjEu
MSBQQ0llIGFzIFJvb3QgQ29tcGxleCcuIFRoaXMgaXMgYWNjb21wbGlzaGVkIHVzaW5nIHRoZQo+
ID4gcmVzZXRfY29udHJvbF9idWxrIEFQSXMuCj4gPgo+ID4gPiAtIGRldm1fcmVzZXRfY29udHJv
bF9idWxrX2dldF9leGNsdXNpdmUoKTogQWxsb3dzIHRoZSBkcml2ZXIgdG8gZ2V0IGFsbAo+ID4g
PiAgIHJlc2V0cyBkZWZpbmVkIGluIHRoZSBEVCB0aGVyZWJ5IHJlbW92aW5nIHRoZSBoYXJkY29k
ZWQgcmVzZXQgbmFtZXMKPiA+ID4gICBpbiB0aGUgZHJpdmVyLgo+ID4gPiAtIHJlc2V0X2NvbnRy
b2xfYnVsa19hc3NlcnQoKTogQWxsb3dzIHRoZSBkcml2ZXIgdG8gYXNzZXJ0IHRoZSByZXNldHMK
PiA+ID4gICBkZWZpbmVkIGluIHRoZSBkcml2ZXIuCj4gPiA+IC0gcmVzZXRfY29udHJvbF9idWxr
X2RlYXNzZXJ0KCk6IEFsbG93cyB0aGUgZHJpdmVyIHRvIGRlYXNzZXJ0IHRoZSByZXNldHMKPiA+
ID4gICBkZWZpbmVkIGluIHRoZSBkcml2ZXIuCj4gPiA+Cj4gPgo+ID4gTm8gbmVlZCB0byBsaXN0
IG91dCB0aGUgQVBJcy4gSnVzdCBhZGQgdGhlbSB0byB0aGUgZmlyc3QgcGFyYWdyYXBoIGl0c2Vs
ZiB0bwo+ID4gZXhwbGFpbiBob3cgdGhleSBhcmUgdXNlZC4KPiA+Cj4gCj4gSGVyZSBpcyBhIHNo
b3J0IHZlcnNpb24gb2YgdGhlIGNvbW1pdCBtZXNzYWdlLgo+IAo+IEludHJvZHVjZSBhIG1vcmUg
cm9idXN0IGFuZCBlZmZpY2llbnQgbWV0aG9kIGZvciBhc3NlcnQgYW5kIGRlYXNzZXJ0Cj4gdGhl
IHJlc2V0IGNvbnRyb2xsZXIgdXNpbmcgdGhlIHJlc2V0X2NvbnRyb2xfYnVsayooKSBBUEkuCj4g
U2ltcGxpZnkgcmVzZXQgaGFuZGxpbmcgZm9yIHRoZSBjb3JlIGNsb2NrcyByZXNldCB1bml0IHdp
dGggdGhlCj4gcmVzZXRfY29udHJvbF9idWxrIEFQSXMuCj4gCj4gZGV2bV9yZXNldF9jb250cm9s
X2J1bGtfZ2V0X2V4Y2x1c2l2ZSgpOiBPYnRhaW4gYWxsIHJlc2V0cyBmcm9tIHRoZQo+ICAgICAg
ICAgICAgIGRldmljZSB0cmVlLCByZW1vdmluZyBoYXJkY29kZWQgbmFtZXMuCj4gcmVzZXRfY29u
dHJvbF9idWxrX2Fzc2VydCgpOiBhc3NlcnQgdGhlIHJlc2V0cyBkZWZpbmVkIGluIHRoZSBkcml2
ZXIuCj4gcmVzZXRfY29udHJvbF9idWxrX2RlYXNzZXJ0KCk6IGRlYXNzZXJ0IHRoZSByZXNldHMg
ZGVmaW5lZCBpbiB0aGUgZHJpdmVyLi4KPiAKCkhvdyBhYm91dCwKCiJDdXJyZW50bHksIHRoZSBk
cml2ZXIgYWNxdWlyZXMgYW5kIGFzc2VydHMvZGVhc3NlcnRzIHRoZSByZXNldHMgaW5kaXZpZHVh
bGx5CnRoZXJlYnkgbWFraW5nIHRoZSBkcml2ZXIgY29tcGxleCB0byByZWFkLiBCdXQgdGhpcyBj
YW4gYmUgc2ltcGxpZmllZCBieSB1c2luZwp0aGUgcmVzZXRfY29udHJvbF9idWxrIEFQSXMuIFVz
ZSBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19nZXRfZXhjbHVzaXZlKCkgQVBJIHRvCmFjcXVpcmUg
YWxsIHRoZSByZXNldHMgYW5kIHVzZSByZXNldF9jb250cm9sX2J1bGtfe2Fzc2VydC9kZWFzc2Vy
dH0oKSBBUElzIHRvCmFzc2VydC9kZWFzc2VydCB0aGVtIGluIGJ1bGsuCgpBbHNvIGZvbGxvdyB0
aGUgcmVjb21tZW5kYXRpb25zIHByb3ZpZGVkIGluICdSb2NrY2hpcCBSSzMzOTkgVFJNIHYxLjMg
UGFydDInOgouLi4iCgotIE1hbmkKCj4gRm9sbG93aW5nIHRoZSByZWNvbW1lbmRhdGlvbnMgaW4g
J1JvY2tjaGlwIFJLMzM5OSBUUk0gdjEuMyBQYXJ0Mic6Cj4gCj4gMS4gU3BsaXQgdGhlIHJlc2V0
IGNvbnRyb2xzIGludG8gdHdvIGdyb3VwcyBhcyBwZXIgc2VjdGlvbiAnMTcuNS44LjEuMSBQQ0ll
Cj4gYXMgUm9vdCBDb21wbGV4Jy4KPiAKPiAyLiBEZWFzc2VydCB0aGUgJ1BpcGUsIE1HTVQgU3Rp
Y2t5LCBNR01ULCBDb3JlJyByZXNldHMgaW4gZ3JvdXBzIGFzIHBlciBzZWN0aW9uCj4gJzE3LjUu
OC4xLjEgUENJZSBhcyBSb290IENvbXBsZXgnLiBUaGlzIGlzIGFjY29tcGxpc2hlZCB1c2luZyB0
aGUKPiByZXNldF9jb250cm9sX2J1bGsgQVBJcy4KPiAKPiBEb2VzIHRoaXMgbG9vayBnb29kIHRv
IHlvdT8gTGV0IG1lIGtub3cgaWYgeW91IG5lZWQgYW55IGZ1cnRoZXIgYWRqdXN0bWVudHMhCj4g
Cj4gSSB3aWxsIGZpeCB0aGlzIGZvciBDTEsgYnVsayBhcyB3ZWxsLgo+IAo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5jb20+Cj4gPgo+ID4gU29tZSBu
aXRwaWNrcyBiZWxvdy4gUmVzdCBsb29rcyBnb29kLgo+IAo+IEkgd2lsbCBmaXggdGhlc2UgaW4g
dGhlIG5leHQgdmVyc2lvbi4KPiAKPiA+IC0gTWFuaQo+ID4KPiA+IC0tCj4gPiDgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCj4gCj4gVGhhbmtzCj4g
LUFuYW5kCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+Cu
teCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
