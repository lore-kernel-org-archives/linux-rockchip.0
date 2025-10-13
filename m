Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E4CFCCD183
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QikF1ayI61DH7DXYeJyd14iV1Lj/cr+7kwWlNSbBvb4=; b=Y3WTEH5/TLKGJ8
	j47RXrgvFW2kzQWPaHy8BC1k9KfsIrYUwCo0UVJSMalzXzDb+nv7h5yLrVq0SaMd5zR5qDFd/Ba0R
	Ur7QK5yCmLpjbFfhDkEoRXDmGR2tDI90aIY379jfzbZ8vvpqRGXbYfu/L/KUK7qmLrJsyOwjXWkf7
	87OcpGRziypd70FajhugivLbAAsubnLgXDOq5i3fuzppLucYwSVQCu3+YJcrBYLCJqQAZkrzLeedG
	SgDJZbP2e0nMxW5siN2DdSNuhOwURXJQyzsEB6DFTPXTIM1be/Amgq1qPNbh5lxJkPsrMZFfTSqQ+
	oa4ta9U7SorzSRmQMNTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JCp-0000000DJQU-0Aa4;
	Mon, 13 Oct 2025 14:07:19 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JCm-0000000DJPO-1E5a
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:07:17 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-869ecba3bd2so644995085a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760364435; x=1760969235; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B3fxFMnHvhHYZxkU89prvgFn6OmHBSMeJm9YGzPYMJU=;
        b=IRpERlXeN4wCouQlBIn+th7qvjqEOezOw+wDu0bj7qvULXwBS1Gr3Qvx1IhzE3z6mP
         2qaE4ytIDY+QD9qnJzSwaadTuTMns/jvTPeXAdVF702POsJ03N5B87yfOBvJ6fLUC0/9
         DqUUOwDDhGodOY6kklnXlW6ptwJGRF0Uw3QJ+NunD52z5g3n+4xGWX2sedtTaIFUU8ag
         MT+u9ekgRfcBDCo2uq6mwPN7fHwv7/WK3gSM9HkQLCAtMd3d0N8h7upgdHT0Oj23u099
         LVfxq4nZQqurJWuGxXtgz/VvJOeeHxapy7gJHnCEFH2rkRWEvtsxbW8bseJmU42835BY
         Y06Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364435; x=1760969235;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B3fxFMnHvhHYZxkU89prvgFn6OmHBSMeJm9YGzPYMJU=;
        b=RnBxNP3xgqhPyiuqCpUahrTsYufVx7B+Ehy3O2FozBVTptVKgxQgMH6VdzCf1bycWk
         9Mpjmjwqlywe4fPkjUv13uU0d706C46v5PbCQW2QLSbAKx2tsZJ9u845YKYOTo2gGx9B
         oh6zd+yLpiHI/ISdmoYESyeQFGplB1x8odQQUpoCWeGqvyVpt4gmAB2rghr1L9tvlxqr
         UfcHGGOop2YqjnFza0wHOYB6eQtQRcaeR+6T8z4ZO+5cuqBtC6qN7hriDqW2k7wpUsYk
         ObAt97AhsVjezDZv8wzPZZP9T6b/E8d79UIFDqpKMeYDO/9gHMo/eH7rwnDikgbU9uhk
         Y1RQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5KOwXlBqSca8zqJ29DjO3U7yfwh8ZiSnassRVMd0hIRo0La7b+gdhpc6JxpszkSMXsVRHgYsD7JHgF4k7sQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyx/wR7wGYGzUMkILAVIuAc6TmIf3GMgd2m4vFP6B33nW9uKmm5
	5G/GyLDuDJgouaFI3PtNXqw3rLiiBmv2HvuFVAshQtXPw7zKXJWgXW4oGVgmeJbN7ilxx2wE6aR
	Wb6Xv5xqfXItm7LnGuJGCiO44JDRYSHc=
X-Gm-Gg: ASbGncvsfIfWobADUBK/zag9XOzKFnUZAdILs4sJn06wQP3EU41WeMZGR2zEJQWg/hR
	acSQHzgkajOYTBGemiDVl4WcoUHkzXCW3KWcWeNgvoj0lT+yik1IW9fPy30CPphL2fu2zo2fk3K
	tzobw+PCiY5LsiZt37P5kSyXJEKwoHE/EzJaGZyzHVtLgg4Ve1hsP5ECsi/2smeEXSMBgmvYMSE
	moGIl7PcVa4uo9iM2Yto/l6P8FZpgFBAeAmSg==
X-Google-Smtp-Source: AGHT+IFJyxN0Hv1Y4GUd/peF3juYf0BASxuDUqSk2KfDDUExhxmcAVmPSatg4At2Xmntps9WxQl2SPNothq8SpuZzXY=
X-Received: by 2002:a05:622a:4c6:b0:4b5:eb7b:2789 with SMTP id
 d75a77b69052e-4e6ead4825emr307845311cf.49.1760364434713; Mon, 13 Oct 2025
 07:07:14 -0700 (PDT)
MIME-Version: 1.0
References: <20251009084416.45542-1-jjm2473@gmail.com> <20251009084416.45542-4-jjm2473@gmail.com>
 <aOe_0EufouURu7R2@shell.armlinux.org.uk> <CAP_9mL4MfzagxiMD1VdOu=jBuN_XsOrvPQT=XTVgu2+G=+nD9A@mail.gmail.com>
 <aOz1SzpzGLDQjiYQ@shell.armlinux.org.uk>
In-Reply-To: <aOz1SzpzGLDQjiYQ@shell.armlinux.org.uk>
From: Liangbin Lian <jjm2473@gmail.com>
Date: Mon, 13 Oct 2025 22:07:02 +0800
X-Gm-Features: AS18NWC2KWpOjrIZRCNJ-njN7lopgvdR9BZGhK7C99VWUiJOF3JdegyR1Tmc-SU
Message-ID: <CAP_9mL6x=p169y026nNycZsHK6UMHqJ+o-M_k0MqnvpB2fPzJg@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com, 
	honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com, 
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org, 
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org, 
	jbx6244@gmail.com, andrew@lunn.ch, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_070716_332443_2AB9CB50 
X-CRM114-Status: GOOD (  33.55  )
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

UnVzc2VsbCBLaW5nIChPcmFjbGUpIDxsaW51eEBhcm1saW51eC5vcmcudWs+IOS6jjIwMjXlubQx
MOaciDEz5pel5ZGo5LiAIDIwOjQ55YaZ6YGT77yaCj4KPiBPbiBGcmksIE9jdCAxMCwgMjAyNSBh
dCAxMToyMDowOEFNICswODAwLCBMaWFuZ2JpbiBMaWFuIHdyb3RlOgo+ID4gUnVzc2VsbCBLaW5n
IChPcmFjbGUpIDxsaW51eEBhcm1saW51eC5vcmcudWs+IOS6jjIwMjXlubQxMOaciDnml6Xlkajl
m5sgMjE6NTnlhpnpgZPvvJoKPiA+ID4KPiA+ID4gT24gVGh1LCBPY3QgMDksIDIwMjUgYXQgMDQ6
NDQ6MTZQTSArMDgwMCwgTGlhbmdiaW4gTGlhbiB3cm90ZToKPiA+ID4gPiArJmdtYWMwIHsKPiA+
ID4gPiArICAgICBwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4gPiA+ID4gKyAgICAgY2xvY2tfaW5f
b3V0ID0gImlucHV0IjsKPiA+ID4gLi4uCj4gPiA+ID4gKyZnbWFjMSB7Cj4gPiA+ID4gKyAgICAg
cGh5LW1vZGUgPSAicmdtaWktaWQiOwo+ID4gPiA+ICsgICAgIGNsb2NrX2luX291dCA9ICJpbnB1
dCI7Cj4gPiA+Cj4gPiA+IEkgYW0gZmluZSB3aXRoIHdoYXQgaXMgYmVpbmcgcHJvcG9zZWQgaGVy
ZSwgYnV0IEkgdGhpbmsgdGhpcwo+ID4gPiBjbG9ja19pbl9vdXQgcHJvcGVydHkgbmVlZHMgZml4
aW5nLiBUaGUgZGVzY3JpcHRpb24gZm9yIGl0IGlzIHRodXM6Cj4gPiA+Cj4gPiA+ICAgY2xvY2tf
aW5fb3V0Ogo+ID4gPiAgICAgZGVzY3JpcHRpb246Cj4gPiA+ICAgICAgIEZvciBSR01JSSwgaXQg
bXVzdCBiZSAiaW5wdXQiLCBtZWFucyBtYWluIGNsb2NrKDEyNU1IeikKPiA+ID4gICAgICAgaXMg
bm90IHNvdXJjZWQgZnJvbSBTb0MncyBQTEwsIGJ1dCBpbnB1dCBmcm9tIFBIWS4KPiA+ID4gICAg
ICAgRm9yIFJNSUksICJpbnB1dCIgbWVhbnMgUEhZIHByb3ZpZGVzIHRoZSByZWZlcmVuY2UgY2xv
Y2soNTBNSHopLAo+ID4gPiAgICAgICAib3V0cHV0IiBtZWFucyBHTUFDIHByb3ZpZGVzIHRoZSBy
ZWZlcmVuY2UgY2xvY2suCj4gPiA+ICAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZp
bml0aW9ucy9zdHJpbmcKPiA+ID4gICAgIGVudW06IFtpbnB1dCwgb3V0cHV0XQo+ID4gPiAgICAg
ZGVmYXVsdDogaW5wdXQKPiA+ID4KPiA+ID4gVGhlIHByb2JsZW1zIHRoYXQgSSBoYXZlIGhlcmUg
YXJlOgo+ID4gPgo+ID4gPiAxKSB0aGUgZGVzY3JpcHRpb24gc3RhdGVzIHRoYXQgdGhlIG9ubHkg
cG9zc2libGUgdmFsdWUgZm9yIHRoaXMgd2hlbiBpbgo+ID4gPiAgICBSR01JSSBtb2RlIGlzICJp
bnB1dCIgd2hpY2ggaXMgcmVhc29uYWJsZSwgYmVjYXVzZSBpdCdzIGR1ZSB0byB0aGUKPiA+ID4g
ICAgUkdNSUkgc3BlY2lmaWNhdGlvbi4gVGhlIGRyaXZlciBjb2RlIGlzIHBlcmZlY3RseSBhYmxl
IHRvIGRldGVybWluZQo+ID4gPiAgICB3aGV0aGVyIFJHTUlJIGhhcyBiZWVuIHNwZWNpZmllZCwg
YW5kIHNldCBic3BfcHJpdi0+Y2xvY2tfaW5wdXQKPiA+ID4gICAgaXRzZWxmLCByZWxpZXZpbmcg
RFQgb2YgdGhpcyBuZWVkLgo+ID4gPgo+ID4gPiAyKSBic3BfcHJpdi0+Y2xvY2tfaW5wdXQgaXMg
b25seSB1c2VkIGluIGdtYWNfY2xrX2VuYWJsZSgpIHdoZW4gY2FsbGluZwo+ID4gPiAgICB0aGUg
U29DIHNwZWNpZmljIHNldF9jbG9ja19zZWxlY3Rpb24oKSBtZXRob2QuIE9ubHkgUkszNTI4LCBS
SzM1NzYsCj4gPiA+ICAgIGFuZCBSSzM1ODggcG9wdWxhdGUgdGhpcyBtZXRob2QuIEV2ZXJ5IG90
aGVyIFNvQyBzdXBwb3J0ZWQgYnkgdGhpcwo+ID4gPiAgICBkcml2ZXIgc3RpbGwgcmVxdWlyZXMg
dGhlIHByb3BlcnR5Ogo+IC4uLgo+ID4gPiAgIGNsb2NrX2luX291dDoKPiA+ID4gICAgIGRlc2Ny
aXB0aW9uOgo+ID4gPiAgICAgICBGb3IgUkdNSUksIGl0IG11c3QgYmUgImlucHV0Igo+ID4KPiA+
IFRoaXMgZGVzY3JpcHRpb24gZG9lcyBub3QgbWF0Y2ggdGhlIGFjdHVhbCBzaXR1YXRpb24sCj4g
PiB0aGVyZSBhcmUgbWFueSBkdHMgdXNpbmcgJ291dHB1dCc6Cj4gPiBodHRwczovL2VsaXhpci5i
b290bGluLmNvbS9saW51eC92Ni4xNy9zb3VyY2UvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NjgtYnBpLXIyLXByby5kdHMjTDIzNQo+ID4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5j
b20vbGludXgvdjYuMTcvc291cmNlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LWV2YjEtdjEwLmR0cyNMMjQxCj4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92
Ni4xNy9zb3VyY2UvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZmFzdHJoaW5v
LXI2OHMuZHRzI0wzMwo+ID4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTcv
c291cmNlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LW5hbm9waS1yNXMuZHRz
I0w3OAo+Cj4gRm9yIGFsbCBvZiB0aGUgYWJvdmUsIHdoZXRoZXIgaXQgaXMgImlucHV0IiBvciAi
b3V0cHV0IiBoYXMgbm8gZWZmZWN0Cj4gYXMgdGhlc2UgYXJlIGFsbCByazM1NjgsIGFuZCByazM1
NjggZG9lcyBub3QgaW1wbGVtZW50IHRoZQo+IHNldF9jbG9ja19zZWxlY3Rpb24oKSBtZXRob2Qu
Cj4KPiBzdGF0aWMgY29uc3Qgc3RydWN0IHJrX2dtYWNfb3BzIHJrMzU2OF9vcHMgPSB7Cj4gICAg
ICAgICAuc2V0X3BoeV9pbnRmX3NlbCA9IHJrMzU2OF9zZXRfcGh5X2ludGZfc2VsLAo+ICAgICAg
ICAgLnNldF90b19yZ21paSA9IHJrMzU2OF9zZXRfdG9fcmdtaWksCj4gICAgICAgICAuc2V0X3Rv
X3JtaWkgPSByazM1Njhfc2V0X3RvX3JtaWksCj4gICAgICAgICAuc2V0X3NwZWVkID0gcmtfc2V0
X2Nsa19tYWNfc3BlZWQsCj4gICAgICAgICAucmVnc192YWxpZCA9IHRydWUsCj4gICAgICAgICAu
cmVncyA9IHsKPiAgICAgICAgICAgICAgICAgMHhmZTJhMDAwMCwgLyogZ21hYzAgKi8KPiAgICAg
ICAgICAgICAgICAgMHhmZTAxMDAwMCwgLyogZ21hYzEgKi8KPiAgICAgICAgICAgICAgICAgMHgw
LCAvKiBzZW50aW5lbCAqLwo+ICAgICAgICAgfSwKPiB9Owo+Cj4gSSdtIGdvaW5nIHRvIHByb3Bv
c2U6Cj4KPiAxKSB0aGF0IHRoZSBkcml2ZXIgc2hvdWxkIG9ubHkgcHJpbnQgYW4gZXJyb3IgaWYg
ImNsb2NrX2luX291dCIgaXMKPiBtaXNzaW5nIF9hbmRfIHRoZSBTb0MgaW1wbGVtZW50cyB0aGUg
cmVxdWlyZWQgZnVuY3Rpb24uCj4KPiAyKSB0aGF0IHRoZSBkcml2ZXIgc2hvdWxkIHByaW50IGEg
bm9uLWZhdGFsIGVycm9yIGlmIHRoaXMgcHJvcGVydHkgaXMKPiBzcGVjaWZpZWQgaW4gRFQgX2Fu
ZF8gdGhlIFNvQyBkb2VzIG5vdCBpbXBsZW1lbnQgdGhlIGZ1bmN0aW9uIHRvCj4gZGlzY291cmFn
ZSBpdHMgdXNlLgo+Cj4gMykgW3RyXXhfZGVsYXkgc2hvdWxkIG5vdCBwcmludCBhbiBlcnJvciBm
b3Igbm9uLVJHTUlJIHBoeSBpbnRlcmZhY2UKPiBtb2Rlcy4KPgo+IEkgY29uc2lkZXIgaXQgYSBi
dWcgdGhhdCBhIGRyaXZlciBwcmludHMgZXJyb3JzIGZvciBwcm9wZXJ0aWVzIHRoYXQKPiBoYXZl
IG5vdCBiZWVuIHNwZWNpZmllZCB0aGF0IGl0IGRvZXMgbm90IGFjdHVhbGx5IHJlcXVpcmUuIEJ5
IGRvaW5nCj4gc28sIGl0IGVuY291cmFnZXMgcGVvcGxlIHRvIGFkZCB1c2VsZXNzIHByb3BlcnRp
ZXMgdG8gdGhlaXIgRFQKPiBkZXNjcmlwdGlvbiB0aGF0IHdpbGwgbmV2ZXIgZXZlciBiZSB1c2Vk
IChlLmcuIGJlY2F1c2UgdGhleSBhcmUgbm90Cj4gcmVsZXZhbnQgZm9yIGhhcmR3YXJlIHRoZSBv
cGVyYXRpbmcgbW9kZSB0aGF0IHRoZSBib2FyZCBpcyBzZXR1cAo+IGZvci4pCj4KPiAtLQo+IFJN
SydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9w
YXRjaGVzLwo+IEZUVFAgaXMgaGVyZSEgODBNYnBzIGRvd24gMTBNYnBzIHVwLiBEZWNlbnQgY29u
bmVjdGl2aXR5IGF0IGxhc3QhCgpJIHdpbGwgcmVtb3ZlIGNsb2NrX2luX291dCwgaXRzIGRlZmF1
bHQgdmFsdWUgaXMgJ2lucHV0Jy4KQWZ0ZXIgcmVtb3ZpbmcgaXQsIHRoZXJlIHdpbGwgb25seSBi
ZSBhbiBlcnJvciBsb2csIHdoaWNoIHdpbGwgbm90CmFmZmVjdCB0aGUgZnVuY3Rpb24uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
