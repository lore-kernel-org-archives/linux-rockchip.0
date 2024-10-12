Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4E4FCF2564
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 10:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDrSQ2qq6TkAQwAWwjLKKb9qxJV+9eevd5qbkzBWoo4=; b=DGNwlgM4cb94QD
	UKk6Uv4jTOAhoFMSwzhWgdpXomo4L1vVbbx3lrPPHvkqGMF+ozRVjIi8wwzC2P5qjNIldizJ7raow
	hpsEx/fiQIjAHOq+0vmuvhcDgIFigl8IN2oHPT6Gp1Wj9XMfIQGYaJYAtt2Ey76a5AL8DD+dPdBpk
	aoOOEE3D6Ne+ns3yFB9cceogJo1WHcUebcwf74WSXytER6vk1USv8ejpliR7zmryPH+t2eOFNCZqA
	iDsjkhhoOV/0KUaeHp6UGZ9RSW+MDW2MVhTNJTF6jPCrH8RauEorbH/QbdqAyeDT+Z3g7xYv44qgq
	Gen8l6CE+8UGDfNtB5TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szYzM-00000000xBs-2tKm;
	Sat, 12 Oct 2024 10:04:44 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szYzK-00000000xBP-2ono;
	Sat, 12 Oct 2024 10:04:44 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3e3e7ada8c7so1699800b6e.3;
        Sat, 12 Oct 2024 03:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728727481; x=1729332281; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DjrhkihnYZF2WUCfT4mholARLNm6jt8yhmIiSWUOskc=;
        b=Mjo5NVyM5HzZrPJSyfzk4Qq6UQgwRj+90IOAVRcZsFOtp5Z7ODJzDyfFDbzMjSUjAp
         CAXd/VxvV0JkFBQ+MR7fNK7nf1IbjLSosmvSow7BoFniZYeo3Ld/1HtmBn/2DWAk2vtt
         yKHh6nmJeE0CHoMdz+lGMM/se/5D9YJYvyxGUxD5HSO83RZqsEDhkQCeKTnGh9tSungT
         3k1tCzS5h54aDOTkrPzeFiyDK9vj1zeatGorPDRbB8jwgNg2pOqDCTY3XgS5Dcc/LlYD
         RMmSKc4iKp/j+R7xDDdnLdcERBFv0Z9GE6ppDLQ/bG2ykbQ0fMAzJE5yDHaXTvMmwqyB
         4pMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728727481; x=1729332281;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DjrhkihnYZF2WUCfT4mholARLNm6jt8yhmIiSWUOskc=;
        b=M3nTf40jogUIQffYLK+NFnEiu7H4Aay5KMbE/wewmrBUh2RRPOgv9S6OKIYjM7tzHb
         gHbowCZQVRSA73ai6hswCdm+CKXPWiTkgS01Lx9h9FpbOys+mlOJmCkJH7Vbdtt7uHEk
         0qu4Rbllid2oMtWGoU2KgkQePq8PYCv7Vgck7mStbUswUrL+vdf7rRozxJ34fWOEo7YV
         Mt6MQHJL+Z2qWcDkzNtsSGfiPupCoPzKJJwNOU+FQ8UhC0YkGFiMBVie76SIMj3Ka81E
         M/XKBVP4U2QkJgdxt4Wig397qEs9gj6T5ZN+5jK7f/38MVM8T45+XNf1mEZ081sD8g7P
         odYw==
X-Forwarded-Encrypted: i=1; AJvYcCV0wKvkLuRxXWCxen5A0CAs5NmD1yM+BjO7nOW0AKZqx+iHH+HeDzEwy5UVBuJICKLoGGB/ViX2oh/i9fIpaIE=@lists.infradead.org, AJvYcCXeG8iLRwLnvr+Kz5UT1iHWvu3p/EUKQTC+kvX64lyW/dbrWTju1FZE9uKvsAHE6hSbzj2yXJXt1mCyENsc62FU@lists.infradead.org
X-Gm-Message-State: AOJu0Ywup62TdYvm4s74ZajmBuIsnambdJd7l0W1N8dVotlnRjvYyvDs
	MwdMfNPpm9knndUFwq9LaIrso6bIjxkPVum+Lbbo/AX/Hfady0qF/m5c/Ny8ZS47uiJcO+zRw5C
	TTlT3xfJiryEFm0vpd9SSQnUAewWm9dmf
X-Google-Smtp-Source: AGHT+IHubsALN4arqMFkXvL7E4wE4F9DOhX/3Upd7LlP+LifbLve3RbIeXuRN3L7pfVC9Cf1AAVnLqFSu/whRTjMz1w=
X-Received: by 2002:a05:6870:459f:b0:277:e6bc:330c with SMTP id
 586e51a60fabf-2886dfff0cemr3216031fac.29.1728727481354; Sat, 12 Oct 2024
 03:04:41 -0700 (PDT)
MIME-Version: 1.0
References: <20241012050611.1908-1-linux.amoon@gmail.com> <20241012050611.1908-3-linux.amoon@gmail.com>
 <20241012061834.ksbtcaw3c7iacnye@thinkpad> <CANAwSgTk2ynkuxBarvX--Qs_LTduFuSDCv3k_WNgj=za_81+kQ@mail.gmail.com>
 <20241012080019.cdgq63rwj6oi4bg7@thinkpad>
In-Reply-To: <20241012080019.cdgq63rwj6oi4bg7@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 12 Oct 2024 15:34:25 +0530
Message-ID: <CANAwSgSCfM9TUe6j6OemyMbY_NsjLNgV=rCu9jXw7u_361bE+g@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20241012_030442_743106_E62C80FA 
X-CRM114-Status: GOOD (  30.96  )
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

SGkgTWFuaXZhbm5hbiwKCk9uIFNhdCwgMTIgT2N0IDIwMjQgYXQgMTM6MzAsIE1hbml2YW5uYW4g
U2FkaGFzaXZhbQo8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4g
T24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMTI6NTU6MzJQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiA+IEhpIE1hbml2YW5uYW4sCj4gPgo+ID4gVGhhbmtzIGZvciB5b3VyIHJldmlldyBjb21t
ZW50cy4KPiA+Cj4gPiBPbiBTYXQsIDEyIE9jdCAyMDI0IGF0IDExOjQ4LCBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0KPiA+IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4gd3JvdGU6Cj4g
PiA+Cj4gPiA+IE9uIFNhdCwgT2N0IDEyLCAyMDI0IGF0IDEwOjM2OjA0QU0gKzA1MzAsIEFuYW5k
IE1vb24gd3JvdGU6Cj4gPiA+ID4gUmVmYWN0b3IgdGhlIHJlc2V0IGNvbnRyb2wgaGFuZGxpbmcg
aW4gdGhlIFJvY2tjaGlwIFBDSWUgZHJpdmVyLAo+ID4gPiA+IGludHJvZHVjaW5nIGEgbW9yZSBy
b2J1c3QgYW5kIGVmZmljaWVudCBtZXRob2QgZm9yIGFzc2VydCBhbmQKPiA+ID4gPiBkZWFzc2Vy
dCByZXNldCBjb250cm9sbGVyIHVzaW5nIHJlc2V0X2NvbnRyb2xfYnVsayooKSBBUEkuIFVzaW5n
IHRoZQo+ID4gPiA+IHJlc2V0X2NvbnRyb2xfYnVsayBBUElzLCB0aGUgcmVzZXQgaGFuZGxpbmcg
Zm9yIHRoZSBjb3JlIGNsb2NrcyByZXNldAo+ID4gPiA+IHVuaXQgYmVjb21lcyBtdWNoIHNpbXBs
ZXIuCj4gPiA+ID4KPiA+ID4KPiA+ID4gU2FtZSBjb21tZW50cyBhcyBwcmV2aW91cyBwYXRjaC4K
PiA+ID4KPiA+IEkgd2lsbCBleHBsYWluIG1vcmUgYWJvdXQgdGhpcy4KPiA+ID4gPiBTcGlsdCB0
aGUgcmVzZXQgY29udHJvbGxlciBpbiB0d28gZ3JvdXBzIGFzIHByZSB0aGUgUkszMzk5IFRSTS4K
PiA+ID4KPiA+ID4gKnBlcgo+ID4gPgo+ID4gPiBBbHNvIHBsZWFzZSBzdGF0ZSB0aGUgVFJNIG5h
bWUgYW5kIHNlY3Rpb24gZm9yIHJlZmVyZW5jZS4KPiA+ID4KPiA+IFllcwo+ID4gPiA+IEFmdGVy
IHBvd2VyIHVwLCB0aGUgc29mdHdhcmUgZHJpdmVyIHNob3VsZCBkZS1hc3NlcnQgdGhlIHJlc2V0
IG9mIFBDSWUgUEhZLAo+ID4gPiA+IHRoZW4gd2FpdCB0aGUgUExMIGxvY2tlZCBieSBwb2xsaW5n
IHRoZSBzdGF0dXMsIGlmIFBMTAo+ID4gPiA+IGhhcyBsb2NrZWQsIHRoZW4gY2FuIGRlLWFzc2Vy
dCB0aGUgcmVzZXQgc2ltdWx0YW5lb3VzbHkKPiA+ID4gPiBkcml2ZXIgbmVlZCB0byBEZS1hc3Nl
cnQgdGhlIHJlc2V0IHBpbnMgc2ltdWx0aW9uYWx5Lgo+ID4gPiA+Cj4gPiA+ID4gICBQSVBFX1JF
U0VUX04vTUdNVF9TVElDS1lfUkVTRVRfTi9NR01UX1JFU0VUX04vUkVTRVRfTi4KPiA+ID4gPgo+
ID4gPiA+IC0gcmVwbGFjZSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZSgpIHdpdGgK
PiA+ID4gPiAgICAgICBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19nZXRfZXhjbHVzaXZlKCkuCj4g
PiA+ID4gLSByZXBsYWNlIHJlc2V0X2NvbnRyb2xfYXNzZXJ0IHdpdGgKPiA+ID4gPiAgICAgICBy
ZXNldF9jb250cm9sX2J1bGtfYXNzZXJ0KCkuCj4gPiA+ID4gLSByZXBsYWNlIHJlc2V0X2NvbnRy
b2xfZGVhc3NlcnQgd2l0aAo+ID4gPiA+ICAgICAgIHJlc2V0X2NvbnRyb2xfYnVsa19kZWFzc2Vy
dCgpLgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1v
b25AZ21haWwuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+IHY3OiByZXBsYWNlIGRldm1fcmVzZXRf
Y29udHJvbF9idWxrX2dldF9vcHRpb25hbF9leGNsdXNpdmUoKQo+ID4gPiA+ICAgICAgICAgd2l0
aCBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19nZXRfZXhjbHVzaXZlKCkKPiA+ID4gPiAgICAgdXBk
YXRlIHRoZSBmdW5jdGlvbmFsIGNoYW5nZXMuCj4gPiA+ID4gVjY6IEFkZCByZWFzb24gZm9yIHRo
ZSBzcGxpdCBvZiB0aGUgUkVTRVQgcGlucy4KPiA+ID4gPiB2NTogRml4IHRoZSBEZS1hc3NlcnQg
cmVzZXQgY29yZSBhcyBwZXIgdGhlIFRSTQo+ID4gPiA+ICAgICBEZS1hc3NlcnQgdGhlIFBJUEVf
UkVTRVRfTi9NR01UX1NUSUNLWV9SRVNFVF9OL01HTVRfUkVTRVRfTi9SRVNFVF9OCj4gPiA+ID4g
ICAgIHNpbXVsdGFuZW91c2x5Lgo+ID4gPiA+IHY0OiB1c2UgZGV2X2Vycl9wcm9iZSBpbiBlcnJv
ciBwYXRoLgo+ID4gPiA+IHYzOiBGaXggdHlwbyBpbiBjb21taXQgbWVzc2FnZSwgZHJvcHBlZCBy
ZXBvcnRlZCBieS4KPiA+ID4gPiB2MjogRml4IGNvbXBpbGF0aW9uIGVycm9yIHJlcG9ydGVkIGJ5
IEludGVsIHRlc3Qgcm9ib3QKPiA+ID4gPiAgICAgZml4ZWQgY2hlY2twYXRjaCB3YXJuaW5nLgo+
ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAu
YyB8IDE1MSArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oIHwgIDI2ICsrKy0tCj4gPiA+ID4gIDIgZmlsZXMgY2hh
bmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgMTI4IGRlbGV0aW9ucygtKQo+ID4gPiA+Cj4gPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiA+ID4gPiBpbmRleCAyNzc3ZWYw
Y2I1OTkuLjlhMTE4ZTJiOGNiZCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpZS1yb2NrY2hpcC5jCj4KPiBbLi4uXQo+Cj4gPiA+ID4gQEAgLTI1NiwzMSArMTgxLDE1
IEBAIGludCByb2NrY2hpcF9wY2llX2luaXRfcG9ydChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9j
a2NoaXApCj4gPiA+ID4gICAgICAgICogUGxlYXNlIGRvbid0IHJlb3JkZXIgdGhlIGRlYXNzZXJ0
IHNlcXVlbmNlIG9mIHRoZSBmb2xsb3dpbmcKPiA+ID4gPiAgICAgICAgKiBmb3VyIHJlc2V0IHBp
bnMuCj4gPiA+Cj4gPiA+IEkgZG9uJ3QgdGhpbmsgbXkgZWFybGllciBjb21tZW50IG9uIHRoaXMg
YWRkcmVzc2VkLiBXaHkgYXJlIHlvdSBjaGFuZ2luZyB0aGUKPiA+ID4gcmVzZXQgb3JkZXI/IFdo
eSBjYW4ndCB5b3UgaGF2ZSB0aGUgcmVzZXRzIGluIGJlbG93IChvbGRlcikgb3JkZXI/Cj4gPiA+
Cj4gPiA+IHN0YXRpYyBjb25zdCBjaGFyICogY29uc3Qgcm9ja2NoaXBfcGNpX2NvcmVfcnN0c1td
ID0gewo+ID4gPiAgICAgICAgIG1nbXQtc3RpY2t5IiwKPiA+ID4gICAgICAgICAiY29yZSIsCj4g
PiA+ICAgICAgICAgIm1nbXQiLAo+ID4gPiAgICAgICAgICJwaXBlIiwKPiA+ID4gfTsKPiA+ICBJ
IHdpbGwgYWRkIGEgY29tbWVudCBvbiB0aGlzIGFib3ZlLgoKSSBnZXQgeW91ciBwb2ludCwgSSBt
aXNzZWQgeW91ciBwb2ludC4KWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpZS1yb2NrY2hpcC5jP2g9djYuMTItcmMyI24yNzUKCkFjdHVhbGx5IEkgaGFkIHRoZXNl
IGNoYW5nZXMsIGJ1dCBpdCBnb3QgbWlzc2VkIG91dCBpbiByZWJhc2UuCgo+Cj4gU29ycnksIEkg
ZG9uJ3QgZ2V0IHlvdXIgcmVzcG9uc2UuIE15IHN1Z2dlc3Rpb24gd2FzIHRvIGtlZXAgdGhlIHJl
c2V0cyBzb3J0ZWQgYXMKPiB0aGUgb3JpZ2luYWwgb3JkZXIgKGFsc28gaW5kaWNhdGVkIGJ5IG15
IGFib3ZlIHNuaXBwZXQpLgoKSSB3aWxsIGdvIHRocm91Z2ggYWxsIHRoZSBzdWdnZXN0aW9ucyBh
bmQgbW9kaWZ5IHRoZW0gYWNjb3JkaW5nbHkuCgpBcyBwZXIgdGhlIFJLMzM5OSBUUk0KWzJdIGh0
dHBzOi8vcm9ja2NoaXAuZnIvUm9ja2NoaXAlMjBSSzMzOTklMjBUUk0lMjBWMS4zJTIwUGFydDIu
cGRmCgoxNy41LjIuMiBSZXNldCBBcHBsaWNhdGlvbgoxNy41LjIuMi4yIFN5c3RlbSBSZXNldCAo
ZGVzY3JpYmUgYWxsIHRoZSBjb3JlIHJlc2V0IGZlYXR1cmUpCihuYW1lIGFzIHBlciB0aGUgZHRz
IG1hcHBpbmcpClJFU0VUX046IC0gY29yZQpNR01UX1JFU0VUX046LSBtZ210Ck1HTVRfU1RJQ0tZ
X1JFU0VUX046LSBtZ210LXN0aWNreQpQSVBFX1JFU0VUX046IC0gcGlwZQpBWElfUkVTRVRfTiAt
IGFjbGsKQVBCX1JFU0VUX046IHBjbGsKUE1fUkVTRVRfTjogLSBwbQpQQ0lFX1BIWV9SRVNFVF9O
OiAtIHBoeSByZXNldCAodXNlZCBpbiB0aGUgcGh5IGRyaXZlcikuCgpUaGlzIGlzIHRoZSByZWFz
b24gZm9yIHRoZSBzcGxpdCBvZiB0aGUgY2xrIGFuZCBjb3JlIHJlc2V0LgoKRnVydGhlciBkb3du
IGluCjE3LjUuOCBQQ0llIE9wZXJhdGlvbgoxNy41LjguMSBQQ0llIEluaXRpYWxpemF0aW9uIFNl
cXVlbmNlCjE3LjUuOC4xLjEgUENJZSBhcyBSb290IENvbXBsZXgKCjYuIERlLWFzc2VydCB0aGUg
UElQRV9SRVNFVF9OL01HTVRfU1RJQ0tZX1JFU0VUX04vTUdNVF9SRVNFVF9OL1JFU0VUX04Kc2lt
dWx0YW5lb3VzbHkKClNob3VsZCBJIGZvbGxvdyB0aGlzIG9yZGVyID8gb3IgdGhlIGFib3ZlIG9y
ZGVyLgpzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHJvY2tjaGlwX3BjaV9jb3JlX3JzdHNbXSA9
IHsKICAgICAgICAicGlwZSIsCiAgICAgICAgIm1nbXQtc3RpY2t5IiwKICAgICAgICAgIm1nbXQi
LAogICAgICAgICAiY29yZSIsCn07Cgo+Cj4gLSBNYW5pCj4KPiAtLQo+IOCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KClRoYW5rcwotQW5hbmQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
