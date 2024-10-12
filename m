Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 676D7CF2564
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 12:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNLiGm5WcVFOmnwJDEjoDYHj7omNv24DzKZ0FFaDVZs=; b=dU27VEDxF57r1z
	H81SDA9Hy2Mtqnmgfze5PW3VwCQjpO20NEQZc+NyHm47uUTAzFUepyJH023oQs5yg1bW35BO3dgrs
	IGa6KNx/DTh85+bfLtCglE3gYD8wKjF8J8SpOyr69sb5+DYjKdJPS3x2KxjUp+AwT3aSowGk5aXSu
	pAVMPC96IhqfgYHM8m9w6a7BL4sc9JWCYQiAan/wkqmvmiZMdeeXOXY9pd98kUujE/uTHMaCbtiUm
	Ac3PNMoIBJldPp7pWSpirgSCEQmT81j+V/kRsU4/tHfffXAM964yR/LAHK1fPVRws1b8j6VmXFlhM
	LlSlazJAOGiY+NXSxpQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szatp-00000001AcT-0kbo;
	Sat, 12 Oct 2024 12:07:09 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szasQ-00000001AT4-23yc
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 12:05:44 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-71e579abb99so52267b3a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Oct 2024 05:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728734741; x=1729339541; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=d31fMEIkZBWfHDg7MkYDOFVjb8TdCN2jGRRDuyk+HcY=;
        b=htcRo2AmjXIkhJa6y1MUJtIhLylst1jzdMPwcLR5XwM2ixZsqvXmga9Piiwl39ATiw
         Bt6IPM7Kw93fjeCQJoJlNJF2khAiyfi/7k3ZqJwlVi3jG3QreSv3Jt7R1yQ9Kp+DHHoy
         5oqkComll32CaKyeWXNwsMI2O7TPA96BMB41r8eyWpW+IMu8JtiH1PGVRvrQtR0f8RCy
         NNZqW0JhHh8IXyb9Vp2QHieC8U1vgzc+8mXZ/MgAKMGagKzqrf7OyTAxBGGZS2gS1KU5
         ZuDzhJJUVc3DAV0OabGF93IMg5TShf6z5kkKfHI3l2qijsNQmsjbG4H2g3+vDZSMgPVp
         DmEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728734741; x=1729339541;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d31fMEIkZBWfHDg7MkYDOFVjb8TdCN2jGRRDuyk+HcY=;
        b=j431++z78GriGoD1V4jDPoZZq2gROSS0/khj/WEu6EJu9d7AvudjRL29O/+38ufh0A
         gopZ+prTQC/5BAeWknFDbFHkDi7tAi+VwRVKO01KC4x7yJK1GOGYf/bnbfWgARR+AZky
         Zy36btUH5ddfUEWhJ+2QamkqryN5MkNr9fsV9WzGczEQVt/1MYtUsZ6gc36VpQSEp6Ep
         xFYb8chCEAXKnHiCTIQLt9o7CeLQ+cKtPPsKS11hwk8I4ZtmT7/Wj3n7+OLL4J82hTR3
         K+mZVxYb2jbEMVGawmJIXSik1Acg9GE5ES+7nFxqi/RQjvOtWBudbuaXgC7naUqlarTP
         zsCA==
X-Forwarded-Encrypted: i=1; AJvYcCVrraPxJlCU5JtH+1edGdLhcVGIOPXlVpRMYdMwZiGXQUnIUkQkssElii7BCdBSG7SoDMYFuBhIO8x/dfX7gA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyG2EwRH1nmvh01Ojon4EYsdsCt1EgmrB/4kAgSZthdlZbQJeVs
	tqrIK69/MCC6VZO7f51Fdh1DHlqJ2KgiFF56dpD9sjp337XaamFx/aPBZ1reoQ==
X-Google-Smtp-Source: AGHT+IFSsBMQH+PyGhmqzrLQ62VMYY9J5q1rZuOjYArGKZZ0lBK45Y5rDnqcj6s9R/T0RqZCAWlqBw==
X-Received: by 2002:a05:6a00:811:b0:71e:209:513c with SMTP id d2e1a72fcca58-71e380a36c9mr10010363b3a.17.1728734741456;
        Sat, 12 Oct 2024 05:05:41 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2aaba17dsm4006379b3a.155.2024.10.12.05.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:05:41 -0700 (PDT)
Date: Sat, 12 Oct 2024 17:35:36 +0530
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
Subject: Re: [PATCH v7 2/3] PCI: rockchip: Simplify reset control handling by
 using reset_control_bulk*() function
Message-ID: <20241012120536.l7tp32ofvf6okijy@thinkpad>
References: <20241012050611.1908-1-linux.amoon@gmail.com>
 <20241012050611.1908-3-linux.amoon@gmail.com>
 <20241012061834.ksbtcaw3c7iacnye@thinkpad>
 <CANAwSgTk2ynkuxBarvX--Qs_LTduFuSDCv3k_WNgj=za_81+kQ@mail.gmail.com>
 <20241012080019.cdgq63rwj6oi4bg7@thinkpad>
 <CANAwSgSCfM9TUe6j6OemyMbY_NsjLNgV=rCu9jXw7u_361bE+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgSCfM9TUe6j6OemyMbY_NsjLNgV=rCu9jXw7u_361bE+g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_050542_567250_EC6BAC69 
X-CRM114-Status: GOOD (  35.04  )
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

T24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMDM6MzQ6MjVQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBIaSBNYW5pdmFubmFuLAo+IAo+IE9uIFNhdCwgMTIgT2N0IDIwMjQgYXQgMTM6MzAsIE1h
bml2YW5uYW4gU2FkaGFzaXZhbQo+IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4g
d3JvdGU6Cj4gPgo+ID4gT24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMTI6NTU6MzJQTSArMDUzMCwg
QW5hbmQgTW9vbiB3cm90ZToKPiA+ID4gSGkgTWFuaXZhbm5hbiwKPiA+ID4KPiA+ID4gVGhhbmtz
IGZvciB5b3VyIHJldmlldyBjb21tZW50cy4KPiA+ID4KPiA+ID4gT24gU2F0LCAxMiBPY3QgMjAy
NCBhdCAxMTo0OCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtCj4gPiA+IDxtYW5pdmFubmFuLnNhZGhh
c2l2YW1AbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBPbiBTYXQsIE9jdCAxMiwg
MjAyNCBhdCAxMDozNjowNEFNICswNTMwLCBBbmFuZCBNb29uIHdyb3RlOgo+ID4gPiA+ID4gUmVm
YWN0b3IgdGhlIHJlc2V0IGNvbnRyb2wgaGFuZGxpbmcgaW4gdGhlIFJvY2tjaGlwIFBDSWUgZHJp
dmVyLAo+ID4gPiA+ID4gaW50cm9kdWNpbmcgYSBtb3JlIHJvYnVzdCBhbmQgZWZmaWNpZW50IG1l
dGhvZCBmb3IgYXNzZXJ0IGFuZAo+ID4gPiA+ID4gZGVhc3NlcnQgcmVzZXQgY29udHJvbGxlciB1
c2luZyByZXNldF9jb250cm9sX2J1bGsqKCkgQVBJLiBVc2luZyB0aGUKPiA+ID4gPiA+IHJlc2V0
X2NvbnRyb2xfYnVsayBBUElzLCB0aGUgcmVzZXQgaGFuZGxpbmcgZm9yIHRoZSBjb3JlIGNsb2Nr
cyByZXNldAo+ID4gPiA+ID4gdW5pdCBiZWNvbWVzIG11Y2ggc2ltcGxlci4KPiA+ID4gPiA+Cj4g
PiA+ID4KPiA+ID4gPiBTYW1lIGNvbW1lbnRzIGFzIHByZXZpb3VzIHBhdGNoLgo+ID4gPiA+Cj4g
PiA+IEkgd2lsbCBleHBsYWluIG1vcmUgYWJvdXQgdGhpcy4KPiA+ID4gPiA+IFNwaWx0IHRoZSBy
ZXNldCBjb250cm9sbGVyIGluIHR3byBncm91cHMgYXMgcHJlIHRoZSBSSzMzOTkgVFJNLgo+ID4g
PiA+Cj4gPiA+ID4gKnBlcgo+ID4gPiA+Cj4gPiA+ID4gQWxzbyBwbGVhc2Ugc3RhdGUgdGhlIFRS
TSBuYW1lIGFuZCBzZWN0aW9uIGZvciByZWZlcmVuY2UuCj4gPiA+ID4KPiA+ID4gWWVzCj4gPiA+
ID4gPiBBZnRlciBwb3dlciB1cCwgdGhlIHNvZnR3YXJlIGRyaXZlciBzaG91bGQgZGUtYXNzZXJ0
IHRoZSByZXNldCBvZiBQQ0llIFBIWSwKPiA+ID4gPiA+IHRoZW4gd2FpdCB0aGUgUExMIGxvY2tl
ZCBieSBwb2xsaW5nIHRoZSBzdGF0dXMsIGlmIFBMTAo+ID4gPiA+ID4gaGFzIGxvY2tlZCwgdGhl
biBjYW4gZGUtYXNzZXJ0IHRoZSByZXNldCBzaW11bHRhbmVvdXNseQo+ID4gPiA+ID4gZHJpdmVy
IG5lZWQgdG8gRGUtYXNzZXJ0IHRoZSByZXNldCBwaW5zIHNpbXVsdGlvbmFseS4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiAgIFBJUEVfUkVTRVRfTi9NR01UX1NUSUNLWV9SRVNFVF9OL01HTVRfUkVTRVRf
Ti9SRVNFVF9OLgo+ID4gPiA+ID4KPiA+ID4gPiA+IC0gcmVwbGFjZSBkZXZtX3Jlc2V0X2NvbnRy
b2xfZ2V0X2V4Y2x1c2l2ZSgpIHdpdGgKPiA+ID4gPiA+ICAgICAgIGRldm1fcmVzZXRfY29udHJv
bF9idWxrX2dldF9leGNsdXNpdmUoKS4KPiA+ID4gPiA+IC0gcmVwbGFjZSByZXNldF9jb250cm9s
X2Fzc2VydCB3aXRoCj4gPiA+ID4gPiAgICAgICByZXNldF9jb250cm9sX2J1bGtfYXNzZXJ0KCku
Cj4gPiA+ID4gPiAtIHJlcGxhY2UgcmVzZXRfY29udHJvbF9kZWFzc2VydCB3aXRoCj4gPiA+ID4g
PiAgICAgICByZXNldF9jb250cm9sX2J1bGtfZGVhc3NlcnQoKS4KPiA+ID4gPiA+Cj4gPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5jb20+Cj4gPiA+
ID4gPiAtLS0KPiA+ID4gPiA+IHY3OiByZXBsYWNlIGRldm1fcmVzZXRfY29udHJvbF9idWxrX2dl
dF9vcHRpb25hbF9leGNsdXNpdmUoKQo+ID4gPiA+ID4gICAgICAgICB3aXRoIGRldm1fcmVzZXRf
Y29udHJvbF9idWxrX2dldF9leGNsdXNpdmUoKQo+ID4gPiA+ID4gICAgIHVwZGF0ZSB0aGUgZnVu
Y3Rpb25hbCBjaGFuZ2VzLgo+ID4gPiA+ID4gVjY6IEFkZCByZWFzb24gZm9yIHRoZSBzcGxpdCBv
ZiB0aGUgUkVTRVQgcGlucy4KPiA+ID4gPiA+IHY1OiBGaXggdGhlIERlLWFzc2VydCByZXNldCBj
b3JlIGFzIHBlciB0aGUgVFJNCj4gPiA+ID4gPiAgICAgRGUtYXNzZXJ0IHRoZSBQSVBFX1JFU0VU
X04vTUdNVF9TVElDS1lfUkVTRVRfTi9NR01UX1JFU0VUX04vUkVTRVRfTgo+ID4gPiA+ID4gICAg
IHNpbXVsdGFuZW91c2x5Lgo+ID4gPiA+ID4gdjQ6IHVzZSBkZXZfZXJyX3Byb2JlIGluIGVycm9y
IHBhdGguCj4gPiA+ID4gPiB2MzogRml4IHR5cG8gaW4gY29tbWl0IG1lc3NhZ2UsIGRyb3BwZWQg
cmVwb3J0ZWQgYnkuCj4gPiA+ID4gPiB2MjogRml4IGNvbXBpbGF0aW9uIGVycm9yIHJlcG9ydGVk
IGJ5IEludGVsIHRlc3Qgcm9ib3QKPiA+ID4gPiA+ICAgICBmaXhlZCBjaGVja3BhdGNoIHdhcm5p
bmcuCj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAuYyB8IDE1MSArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gPiAgZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmggfCAgMjYgKysrLS0KPiA+ID4gPiA+
ICAyIGZpbGVzIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDEyOCBkZWxldGlvbnMoLSkKPiA+
ID4gPiA+Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+ID4g
PiA+ID4gaW5kZXggMjc3N2VmMGNiNTk5Li45YTExOGUyYjhjYmQgMTAwNjQ0Cj4gPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+ID4gPiA+ID4gKysr
IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiA+Cj4gPiBbLi4uXQo+
ID4KPiA+ID4gPiA+IEBAIC0yNTYsMzEgKzE4MSwxNSBAQCBpbnQgcm9ja2NoaXBfcGNpZV9pbml0
X3BvcnQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ID4gPiA+ID4gICAgICAgICog
UGxlYXNlIGRvbid0IHJlb3JkZXIgdGhlIGRlYXNzZXJ0IHNlcXVlbmNlIG9mIHRoZSBmb2xsb3dp
bmcKPiA+ID4gPiA+ICAgICAgICAqIGZvdXIgcmVzZXQgcGlucy4KPiA+ID4gPgo+ID4gPiA+IEkg
ZG9uJ3QgdGhpbmsgbXkgZWFybGllciBjb21tZW50IG9uIHRoaXMgYWRkcmVzc2VkLiBXaHkgYXJl
IHlvdSBjaGFuZ2luZyB0aGUKPiA+ID4gPiByZXNldCBvcmRlcj8gV2h5IGNhbid0IHlvdSBoYXZl
IHRoZSByZXNldHMgaW4gYmVsb3cgKG9sZGVyKSBvcmRlcj8KPiA+ID4gPgo+ID4gPiA+IHN0YXRp
YyBjb25zdCBjaGFyICogY29uc3Qgcm9ja2NoaXBfcGNpX2NvcmVfcnN0c1tdID0gewo+ID4gPiA+
ICAgICAgICAgbWdtdC1zdGlja3kiLAo+ID4gPiA+ICAgICAgICAgImNvcmUiLAo+ID4gPiA+ICAg
ICAgICAgIm1nbXQiLAo+ID4gPiA+ICAgICAgICAgInBpcGUiLAo+ID4gPiA+IH07Cj4gPiA+ICBJ
IHdpbGwgYWRkIGEgY29tbWVudCBvbiB0aGlzIGFib3ZlLgo+IAo+IEkgZ2V0IHlvdXIgcG9pbnQs
IEkgbWlzc2VkIHlvdXIgcG9pbnQuCj4gWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jP2g9djYuMTItcmMyI24yNzUKPiAKPiBBY3R1YWxseSBJ
IGhhZCB0aGVzZSBjaGFuZ2VzLCBidXQgaXQgZ290IG1pc3NlZCBvdXQgaW4gcmViYXNlLgo+IAo+
ID4KPiA+IFNvcnJ5LCBJIGRvbid0IGdldCB5b3VyIHJlc3BvbnNlLiBNeSBzdWdnZXN0aW9uIHdh
cyB0byBrZWVwIHRoZSByZXNldHMgc29ydGVkIGFzCj4gPiB0aGUgb3JpZ2luYWwgb3JkZXIgKGFs
c28gaW5kaWNhdGVkIGJ5IG15IGFib3ZlIHNuaXBwZXQpLgo+IAo+IEkgd2lsbCBnbyB0aHJvdWdo
IGFsbCB0aGUgc3VnZ2VzdGlvbnMgYW5kIG1vZGlmeSB0aGVtIGFjY29yZGluZ2x5Lgo+IAo+IEFz
IHBlciB0aGUgUkszMzk5IFRSTQo+IFsyXSBodHRwczovL3JvY2tjaGlwLmZyL1JvY2tjaGlwJTIw
UkszMzk5JTIwVFJNJTIwVjEuMyUyMFBhcnQyLnBkZgo+IAo+IDE3LjUuMi4yIFJlc2V0IEFwcGxp
Y2F0aW9uCj4gMTcuNS4yLjIuMiBTeXN0ZW0gUmVzZXQgKGRlc2NyaWJlIGFsbCB0aGUgY29yZSBy
ZXNldCBmZWF0dXJlKQo+IChuYW1lIGFzIHBlciB0aGUgZHRzIG1hcHBpbmcpCj4gUkVTRVRfTjog
LSBjb3JlCj4gTUdNVF9SRVNFVF9OOi0gbWdtdAo+IE1HTVRfU1RJQ0tZX1JFU0VUX046LSBtZ210
LXN0aWNreQo+IFBJUEVfUkVTRVRfTjogLSBwaXBlCj4gQVhJX1JFU0VUX04gLSBhY2xrCj4gQVBC
X1JFU0VUX046IHBjbGsKPiBQTV9SRVNFVF9OOiAtIHBtCj4gUENJRV9QSFlfUkVTRVRfTjogLSBw
aHkgcmVzZXQgKHVzZWQgaW4gdGhlIHBoeSBkcml2ZXIpLgo+IAo+IFRoaXMgaXMgdGhlIHJlYXNv
biBmb3IgdGhlIHNwbGl0IG9mIHRoZSBjbGsgYW5kIGNvcmUgcmVzZXQuCj4gCj4gRnVydGhlciBk
b3duIGluCj4gMTcuNS44IFBDSWUgT3BlcmF0aW9uCj4gMTcuNS44LjEgUENJZSBJbml0aWFsaXph
dGlvbiBTZXF1ZW5jZQo+IDE3LjUuOC4xLjEgUENJZSBhcyBSb290IENvbXBsZXgKPiAKPiA2LiBE
ZS1hc3NlcnQgdGhlIFBJUEVfUkVTRVRfTi9NR01UX1NUSUNLWV9SRVNFVF9OL01HTVRfUkVTRVRf
Ti9SRVNFVF9OCj4gc2ltdWx0YW5lb3VzbHkKPiAKPiBTaG91bGQgSSBmb2xsb3cgdGhpcyBvcmRl
ciA/IG9yIHRoZSBhYm92ZSBvcmRlci4KPiBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHJvY2tj
aGlwX3BjaV9jb3JlX3JzdHNbXSA9IHsKPiAgICAgICAgICJwaXBlIiwKPiAgICAgICAgICJtZ210
LXN0aWNreSIsCj4gICAgICAgICAgIm1nbXQiLAo+ICAgICAgICAgICJjb3JlIiwKPiB9OwoKT2ss
IHRoYW5rcyBmb3IgY2xhcmlmeWluZy4gSSB3YXMgd29ycmllZCBhYm91dCB0aGUgY29tbWVudCBp
biB0aGUgZHJpdmVyIHRoYXQKd2FybnMgYWdhaW5zdCBjaGFuZ2luZyB0aGUgb3JkZXIuIEJ1dCBU
Uk0gcmVjZWNvbW1lbmRzIGEgZGlmZmVyZW50IG9yZGVyIDovCgpCdXQgc2luY2Ugbm8gb25lIGV2
ZXIgcmVwb3J0ZWQgYW55IGlzc3VlLCBsZXQncyBnbyB3aXRoIHRoZSBleGlzdGluZyBvcmRlci4g
SWYKeW91IHdhbnQgdG8gZm9sbG93IFRSTSwgdGhlbiBJJ2QgbGlrZSB0byBnZXQgYW4gQWNrIGZy
b20gUm9ja2NoaXAgRW5naW5lZXJzIHdobwprbm93cyB0aGUgaGFyZHdhcmUgYmV0dGVyLgoKLSBN
YW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCu
ruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
