Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB6F1CF2568
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 14:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ju17+l4L386E8cGGigi91bO0Q0MgDiiQoEPDB8aFcLw=; b=2V/BrSaM56V1zg
	6f5OaXgIOp2VMhib83yVYnopizY+6Qb09kdMe/CmoCowCWEurPQdn+zTvz+ssDqKH0fxqQV00mhrt
	t2mn4InneDPbOZq8qWMkXDio8GaZTCxjnFmFXdjiaA5q4IfDaPWOMtfw0dX0sLHI8ysvMxELlVxpT
	MKXcnuBgf1bPRUgrtcjUScj1ZeCVNwe7JvxosykSheWkwSv1JFalkpenFuV3WWJ9DK4GRff0LULoq
	78E2XsE+X0XrqYKDUQu9Mp1ShiRtcGZZXD4bDjn1lo0czfQVYnncD3l7mRXlE4tmxanB6Y72pXjOh
	WyAuXemJBZrChC9lbqsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szclH-00000001J5F-1YD6;
	Sat, 12 Oct 2024 14:06:27 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szclE-00000001J4W-0HXd;
	Sat, 12 Oct 2024 14:06:25 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3e5c9026ea1so900540b6e.1;
        Sat, 12 Oct 2024 07:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728741983; x=1729346783; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cCmH1THNg8dg275jcyBMF4Et+cvhpnNYdSxL4UqUwOk=;
        b=McLaF3dGNrRbonXikILB+b4l5AQZ5IhJH3ya3kopQRjICki7ClWcfpzCdUr4dMysxK
         YYd1RaBaxSH0rL6EYVLE+k0BFb2s7auR3JlnReGXK7qyGKiWhaCPOHdzfCrXq1rKLk1k
         GcJiKmo8oVIr2NYWW9/MYeHEzy+9IiK/n09eZ6rfA2NaN1IBlg/buUZlKkvk/NkOfyd1
         /C7fRf6uLOCQOeunCLuNaaEvryHAkCiIP+GJMxgEaBB98R+BW9NKgsngScFIU02OC17j
         2R9bglVX9Gg4kXbU0gz7a34Q3zOyF5RABAXTFL/KbfL0VufSf6dyYeHMSYI9bII4E8xu
         zPow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728741983; x=1729346783;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cCmH1THNg8dg275jcyBMF4Et+cvhpnNYdSxL4UqUwOk=;
        b=EpbSz7pBqjGszFwKx2KrC991jSHpMpdUUwg2+hBMyx3dXnD6UKDqzaUDDyRDmxb0U5
         qQL6bxUF5oyFMda3i3G7Om2VCZnXtiMdufB/+o+s+C56r/nbeUmP7QVh2rPk94LO7hcr
         yLqyvEFsjfDCailf4Uq6EKQ/fml2Scd67cuBcs/cIScVn3Gx7Yt5MzCFysPCBM2kNqxH
         LBtZMXgGY91bEH80MM/XiGWRJp4xB0va1ZNG5mCMgUW+BAn3cTdTAIdxiEpya6LGSYDg
         mrF+jAl9AEC8YyIhAK8tWsVadQTrXPHBvpOvV7E4KzRGCZ/OsnR1hgxPWTjh//WpqiSO
         yd1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUuzzvsMsQYCpnNQZ6qNPrG24tkZIUaeojgqeswcghkTMKozVX7ekzJ6Ed4DYXift9F79rRy8FhkS8qrDqplStf@lists.infradead.org, AJvYcCXjG44zrVHETqwoOrwwV12ri5zyEvY87EJ4OFiYXNJ13sXwX2HE4Kfq8tFP1KZkFD9QRWXY4cbcrp9onCY/DRY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwFWOF7vVbYJKepPrYml6KhSggXpndjXhhMuFkfVuS7L8qgdncu
	VPk/9q9zhRQ++oVdIDmK2e6XrWlOjZmCDEiNiKfem4rZMl66IS2PdlR36SNZcPcWWDplMx+QvHu
	NYJ8dtN4ehocmAR56dmkH6os6KLgq8A==
X-Google-Smtp-Source: AGHT+IG9lm56/n4kuGTTlNoEBLDFH6//5CsJJN4Wt2OniumOX20ofBjuoeRnU8ECwBLZIj5f0lDozZZPxSGxMcMqQTY=
X-Received: by 2002:a05:6808:bc9:b0:3dc:16b5:e3ac with SMTP id
 5614622812f47-3e4d753452dmr5685200b6e.7.1728741982665; Sat, 12 Oct 2024
 07:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <20241012050611.1908-1-linux.amoon@gmail.com> <20241012050611.1908-3-linux.amoon@gmail.com>
 <20241012061834.ksbtcaw3c7iacnye@thinkpad> <CANAwSgTk2ynkuxBarvX--Qs_LTduFuSDCv3k_WNgj=za_81+kQ@mail.gmail.com>
 <20241012080019.cdgq63rwj6oi4bg7@thinkpad> <CANAwSgSCfM9TUe6j6OemyMbY_NsjLNgV=rCu9jXw7u_361bE+g@mail.gmail.com>
 <20241012120536.l7tp32ofvf6okijy@thinkpad>
In-Reply-To: <20241012120536.l7tp32ofvf6okijy@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 12 Oct 2024 19:36:08 +0530
Message-ID: <CANAwSgS-NsXdXMv7V+UG1aCnk7ea+mLcQE803NnLyB4-z_AMUg@mail.gmail.com>
Subject: Re: [PATCH v7 2/3] PCI: rockchip: Simplify reset control handling by
 using reset_control_bulk*() function
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_070624_153172_EB3B691D 
X-CRM114-Status: GOOD (  37.38  )
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

SGkgTWFuaXZhbm5hbiwKCk9uIFNhdCwgMTIgT2N0IDIwMjQgYXQgMTc6MzUsIE1hbml2YW5uYW4g
U2FkaGFzaXZhbQo8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4g
T24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMDM6MzQ6MjVQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiA+IEhpIE1hbml2YW5uYW4sCj4gPgo+ID4gT24gU2F0LCAxMiBPY3QgMjAyNCBhdCAxMzoz
MCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtCj4gPiA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFy
by5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBTYXQsIE9jdCAxMiwgMjAyNCBhdCAxMjo1NToz
MlBNICswNTMwLCBBbmFuZCBNb29uIHdyb3RlOgo+ID4gPiA+IEhpIE1hbml2YW5uYW4sCj4gPiA+
ID4KPiA+ID4gPiBUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGNvbW1lbnRzLgo+ID4gPiA+Cj4gPiA+
ID4gT24gU2F0LCAxMiBPY3QgMjAyNCBhdCAxMTo0OCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtCj4g
PiA+ID4gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+ID4gPiA+
Cj4gPiA+ID4gPiBPbiBTYXQsIE9jdCAxMiwgMjAyNCBhdCAxMDozNjowNEFNICswNTMwLCBBbmFu
ZCBNb29uIHdyb3RlOgo+ID4gPiA+ID4gPiBSZWZhY3RvciB0aGUgcmVzZXQgY29udHJvbCBoYW5k
bGluZyBpbiB0aGUgUm9ja2NoaXAgUENJZSBkcml2ZXIsCj4gPiA+ID4gPiA+IGludHJvZHVjaW5n
IGEgbW9yZSByb2J1c3QgYW5kIGVmZmljaWVudCBtZXRob2QgZm9yIGFzc2VydCBhbmQKPiA+ID4g
PiA+ID4gZGVhc3NlcnQgcmVzZXQgY29udHJvbGxlciB1c2luZyByZXNldF9jb250cm9sX2J1bGsq
KCkgQVBJLiBVc2luZyB0aGUKPiA+ID4gPiA+ID4gcmVzZXRfY29udHJvbF9idWxrIEFQSXMsIHRo
ZSByZXNldCBoYW5kbGluZyBmb3IgdGhlIGNvcmUgY2xvY2tzIHJlc2V0Cj4gPiA+ID4gPiA+IHVu
aXQgYmVjb21lcyBtdWNoIHNpbXBsZXIuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4g
U2FtZSBjb21tZW50cyBhcyBwcmV2aW91cyBwYXRjaC4KPiA+ID4gPiA+Cj4gPiA+ID4gSSB3aWxs
IGV4cGxhaW4gbW9yZSBhYm91dCB0aGlzLgo+ID4gPiA+ID4gPiBTcGlsdCB0aGUgcmVzZXQgY29u
dHJvbGxlciBpbiB0d28gZ3JvdXBzIGFzIHByZSB0aGUgUkszMzk5IFRSTS4KPiA+ID4gPiA+Cj4g
PiA+ID4gPiAqcGVyCj4gPiA+ID4gPgo+ID4gPiA+ID4gQWxzbyBwbGVhc2Ugc3RhdGUgdGhlIFRS
TSBuYW1lIGFuZCBzZWN0aW9uIGZvciByZWZlcmVuY2UuCj4gPiA+ID4gPgo+ID4gPiA+IFllcwo+
ID4gPiA+ID4gPiBBZnRlciBwb3dlciB1cCwgdGhlIHNvZnR3YXJlIGRyaXZlciBzaG91bGQgZGUt
YXNzZXJ0IHRoZSByZXNldCBvZiBQQ0llIFBIWSwKPiA+ID4gPiA+ID4gdGhlbiB3YWl0IHRoZSBQ
TEwgbG9ja2VkIGJ5IHBvbGxpbmcgdGhlIHN0YXR1cywgaWYgUExMCj4gPiA+ID4gPiA+IGhhcyBs
b2NrZWQsIHRoZW4gY2FuIGRlLWFzc2VydCB0aGUgcmVzZXQgc2ltdWx0YW5lb3VzbHkKPiA+ID4g
PiA+ID4gZHJpdmVyIG5lZWQgdG8gRGUtYXNzZXJ0IHRoZSByZXNldCBwaW5zIHNpbXVsdGlvbmFs
eS4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gICBQSVBFX1JFU0VUX04vTUdNVF9TVElDS1lfUkVT
RVRfTi9NR01UX1JFU0VUX04vUkVTRVRfTi4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gLSByZXBs
YWNlIGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlKCkgd2l0aAo+ID4gPiA+ID4gPiAg
ICAgICBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19nZXRfZXhjbHVzaXZlKCkuCj4gPiA+ID4gPiA+
IC0gcmVwbGFjZSByZXNldF9jb250cm9sX2Fzc2VydCB3aXRoCj4gPiA+ID4gPiA+ICAgICAgIHJl
c2V0X2NvbnRyb2xfYnVsa19hc3NlcnQoKS4KPiA+ID4gPiA+ID4gLSByZXBsYWNlIHJlc2V0X2Nv
bnRyb2xfZGVhc3NlcnQgd2l0aAo+ID4gPiA+ID4gPiAgICAgICByZXNldF9jb250cm9sX2J1bGtf
ZGVhc3NlcnQoKS4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5hbmQg
TW9vbiA8bGludXguYW1vb25AZ21haWwuY29tPgo+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4g
djc6IHJlcGxhY2UgZGV2bV9yZXNldF9jb250cm9sX2J1bGtfZ2V0X29wdGlvbmFsX2V4Y2x1c2l2
ZSgpCj4gPiA+ID4gPiA+ICAgICAgICAgd2l0aCBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19nZXRf
ZXhjbHVzaXZlKCkKPiA+ID4gPiA+ID4gICAgIHVwZGF0ZSB0aGUgZnVuY3Rpb25hbCBjaGFuZ2Vz
Lgo+ID4gPiA+ID4gPiBWNjogQWRkIHJlYXNvbiBmb3IgdGhlIHNwbGl0IG9mIHRoZSBSRVNFVCBw
aW5zLgo+ID4gPiA+ID4gPiB2NTogRml4IHRoZSBEZS1hc3NlcnQgcmVzZXQgY29yZSBhcyBwZXIg
dGhlIFRSTQo+ID4gPiA+ID4gPiAgICAgRGUtYXNzZXJ0IHRoZSBQSVBFX1JFU0VUX04vTUdNVF9T
VElDS1lfUkVTRVRfTi9NR01UX1JFU0VUX04vUkVTRVRfTgo+ID4gPiA+ID4gPiAgICAgc2ltdWx0
YW5lb3VzbHkuCj4gPiA+ID4gPiA+IHY0OiB1c2UgZGV2X2Vycl9wcm9iZSBpbiBlcnJvciBwYXRo
Lgo+ID4gPiA+ID4gPiB2MzogRml4IHR5cG8gaW4gY29tbWl0IG1lc3NhZ2UsIGRyb3BwZWQgcmVw
b3J0ZWQgYnkuCj4gPiA+ID4gPiA+IHYyOiBGaXggY29tcGlsYXRpb24gZXJyb3IgcmVwb3J0ZWQg
YnkgSW50ZWwgdGVzdCByb2JvdAo+ID4gPiA+ID4gPiAgICAgZml4ZWQgY2hlY2twYXRjaCB3YXJu
aW5nLgo+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC5jIHwgMTUxICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiA+
ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oIHwgIDI2ICsrKy0tCj4g
PiA+ID4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDEyOCBkZWxldGlv
bnMoLSkKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJv
Y2tjaGlwLmMKPiA+ID4gPiA+ID4gaW5kZXggMjc3N2VmMGNiNTk5Li45YTExOGUyYjhjYmQgMTAw
NjQ0Cj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hp
cC5jCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hp
cC5jCj4gPiA+Cj4gPiA+IFsuLi5dCj4gPiA+Cj4gPiA+ID4gPiA+IEBAIC0yNTYsMzEgKzE4MSwx
NSBAQCBpbnQgcm9ja2NoaXBfcGNpZV9pbml0X3BvcnQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJv
Y2tjaGlwKQo+ID4gPiA+ID4gPiAgICAgICAgKiBQbGVhc2UgZG9uJ3QgcmVvcmRlciB0aGUgZGVh
c3NlcnQgc2VxdWVuY2Ugb2YgdGhlIGZvbGxvd2luZwo+ID4gPiA+ID4gPiAgICAgICAgKiBmb3Vy
IHJlc2V0IHBpbnMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSSBkb24ndCB0aGluayBteSBlYXJsaWVy
IGNvbW1lbnQgb24gdGhpcyBhZGRyZXNzZWQuIFdoeSBhcmUgeW91IGNoYW5naW5nIHRoZQo+ID4g
PiA+ID4gcmVzZXQgb3JkZXI/IFdoeSBjYW4ndCB5b3UgaGF2ZSB0aGUgcmVzZXRzIGluIGJlbG93
IChvbGRlcikgb3JkZXI/Cj4gPiA+ID4gPgo+ID4gPiA+ID4gc3RhdGljIGNvbnN0IGNoYXIgKiBj
b25zdCByb2NrY2hpcF9wY2lfY29yZV9yc3RzW10gPSB7Cj4gPiA+ID4gPiAgICAgICAgIG1nbXQt
c3RpY2t5IiwKPiA+ID4gPiA+ICAgICAgICAgImNvcmUiLAo+ID4gPiA+ID4gICAgICAgICAibWdt
dCIsCj4gPiA+ID4gPiAgICAgICAgICJwaXBlIiwKPiA+ID4gPiA+IH07Cj4gPiA+ID4gIEkgd2ls
bCBhZGQgYSBjb21tZW50IG9uIHRoaXMgYWJvdmUuCj4gPgo+ID4gSSBnZXQgeW91ciBwb2ludCwg
SSBtaXNzZWQgeW91ciBwb2ludC4KPiA+IFsxXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYz9oPXY2LjEyLXJjMiNuMjc1Cj4gPgo+ID4gQWN0dWFs
bHkgSSBoYWQgdGhlc2UgY2hhbmdlcywgYnV0IGl0IGdvdCBtaXNzZWQgb3V0IGluIHJlYmFzZS4K
PiA+Cj4gPiA+Cj4gPiA+IFNvcnJ5LCBJIGRvbid0IGdldCB5b3VyIHJlc3BvbnNlLiBNeSBzdWdn
ZXN0aW9uIHdhcyB0byBrZWVwIHRoZSByZXNldHMgc29ydGVkIGFzCj4gPiA+IHRoZSBvcmlnaW5h
bCBvcmRlciAoYWxzbyBpbmRpY2F0ZWQgYnkgbXkgYWJvdmUgc25pcHBldCkuCj4gPgo+ID4gSSB3
aWxsIGdvIHRocm91Z2ggYWxsIHRoZSBzdWdnZXN0aW9ucyBhbmQgbW9kaWZ5IHRoZW0gYWNjb3Jk
aW5nbHkuCj4gPgo+ID4gQXMgcGVyIHRoZSBSSzMzOTkgVFJNCj4gPiBbMl0gaHR0cHM6Ly9yb2Nr
Y2hpcC5mci9Sb2NrY2hpcCUyMFJLMzM5OSUyMFRSTSUyMFYxLjMlMjBQYXJ0Mi5wZGYKPiA+Cj4g
PiAxNy41LjIuMiBSZXNldCBBcHBsaWNhdGlvbgo+ID4gMTcuNS4yLjIuMiBTeXN0ZW0gUmVzZXQg
KGRlc2NyaWJlIGFsbCB0aGUgY29yZSByZXNldCBmZWF0dXJlKQo+ID4gKG5hbWUgYXMgcGVyIHRo
ZSBkdHMgbWFwcGluZykKPiA+IFJFU0VUX046IC0gY29yZQo+ID4gTUdNVF9SRVNFVF9OOi0gbWdt
dAo+ID4gTUdNVF9TVElDS1lfUkVTRVRfTjotIG1nbXQtc3RpY2t5Cj4gPiBQSVBFX1JFU0VUX046
IC0gcGlwZQo+ID4gQVhJX1JFU0VUX04gLSBhY2xrCj4gPiBBUEJfUkVTRVRfTjogcGNsawo+ID4g
UE1fUkVTRVRfTjogLSBwbQo+ID4gUENJRV9QSFlfUkVTRVRfTjogLSBwaHkgcmVzZXQgKHVzZWQg
aW4gdGhlIHBoeSBkcml2ZXIpLgo+ID4KPiA+IFRoaXMgaXMgdGhlIHJlYXNvbiBmb3IgdGhlIHNw
bGl0IG9mIHRoZSBjbGsgYW5kIGNvcmUgcmVzZXQuCj4gPgo+ID4gRnVydGhlciBkb3duIGluCj4g
PiAxNy41LjggUENJZSBPcGVyYXRpb24KPiA+IDE3LjUuOC4xIFBDSWUgSW5pdGlhbGl6YXRpb24g
U2VxdWVuY2UKPiA+IDE3LjUuOC4xLjEgUENJZSBhcyBSb290IENvbXBsZXgKPiA+Cj4gPiA2LiBE
ZS1hc3NlcnQgdGhlIFBJUEVfUkVTRVRfTi9NR01UX1NUSUNLWV9SRVNFVF9OL01HTVRfUkVTRVRf
Ti9SRVNFVF9OCj4gPiBzaW11bHRhbmVvdXNseQo+ID4KPiA+IFNob3VsZCBJIGZvbGxvdyB0aGlz
IG9yZGVyID8gb3IgdGhlIGFib3ZlIG9yZGVyLgo+ID4gc3RhdGljIGNvbnN0IGNoYXIgKiBjb25z
dCByb2NrY2hpcF9wY2lfY29yZV9yc3RzW10gPSB7Cj4gPiAgICAgICAgICJwaXBlIiwKPiA+ICAg
ICAgICAgIm1nbXQtc3RpY2t5IiwKPiA+ICAgICAgICAgICJtZ210IiwKPiA+ICAgICAgICAgICJj
b3JlIiwKPiA+IH07Cj4KPiBPaywgdGhhbmtzIGZvciBjbGFyaWZ5aW5nLiBJIHdhcyB3b3JyaWVk
IGFib3V0IHRoZSBjb21tZW50IGluIHRoZSBkcml2ZXIgdGhhdAo+IHdhcm5zIGFnYWluc3QgY2hh
bmdpbmcgdGhlIG9yZGVyLiBCdXQgVFJNIHJlY2Vjb21tZW5kcyBhIGRpZmZlcmVudCBvcmRlciA6
Lwo+Cj4gQnV0IHNpbmNlIG5vIG9uZSBldmVyIHJlcG9ydGVkIGFueSBpc3N1ZSwgbGV0J3MgZ28g
d2l0aCB0aGUgZXhpc3Rpbmcgb3JkZXIuIElmCj4geW91IHdhbnQgdG8gZm9sbG93IFRSTSwgdGhl
biBJJ2QgbGlrZSB0byBnZXQgYW4gQWNrIGZyb20gUm9ja2NoaXAgRW5naW5lZXJzIHdobwo+IGtu
b3dzIHRoZSBoYXJkd2FyZSBiZXR0ZXIuCj4KSSB3aWxsIGZvbGxvdyB0aGUgZXhpc3RpbmcgY29k
ZSB2ZXJzaW9uLApJIHdhcyBjb25mdXNlZCB3aXRoIHRoZSBuYW1lIGFuZCBkZXNjcmlwdGlvbiBl
YXJsaWVyLgo+IC0gTWFuaQo+Cj4gLS0KPiDgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgpUaGFua3MKLUFuYW5kCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
