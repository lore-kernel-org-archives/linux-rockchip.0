Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 566DAC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 12:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XdJeZVP/mMT0t3ArTc9voR+K8LpavOdanVumBs3LFIw=; b=s03CJKkGaj5Rmw
	JVYp21oALE41N1EXxkUeX62nO0HRX5KMsf5g6REuePUCFd3d/VbjtTLH+2cDf3wTtfeRwzDsFPZZ4
	eTswrUWY+YQxAVQ1d7q/kWGG9pQJXzgvEyAW7ofRz1f8GWu00mhAdxy9vaQvmPQZh0IQsZbjTgrZo
	yXd6h8yex8vkAneRZyq72U4t2dUpoJpnUbeuiBUCkt2QUAPili08iu1TsCsye4L0Ot2pgVcGm7I1v
	iot+1Tph4a7oWXF5u+EU1ys6lqpCsaRSP1e/XKmTua3n6LD1715lOnaJUB40z5JwTQXbKzVPKwaxx
	o1cc1w00Kc4l7lhxdwpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ82E-00000000ys9-0faL;
	Wed, 31 Jul 2024 12:02:26 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ81j-00000000yjl-05Bn;
	Wed, 31 Jul 2024 12:01:56 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-447d6edc6b1so26068481cf.0;
        Wed, 31 Jul 2024 05:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722427313; x=1723032113; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DdxVctv+DdSXKhp2nW8V2B7yfwAa9gWaT7Efbbf2MUs=;
        b=Z+j28XKcjWNgjtmGdDb30xvUrJ1K1cuwa5J0aVUHrWJ1znUErXEgY7maDujl+TSDrk
         cOf07jQH3IOaOxmKu+0sftzCLZpAMO35U5jywc8lQVco0os4nptaKBJEisTGdxgkt4xY
         56qXQSnPVYkwOyOFpz9QSxmWhpYnQKXu9SriuM59sRY/GjIYomNrm9KtP+4AfamQ3GrX
         lnKRZFMPVPl0lorVffsfSKhYMOIGUu8s52lpVavVBCOfiM//T1kIDAbx7kyBcB4N9+cd
         xSTVVYUshNOCUFIRqIfUnKV7ApbXD05RQ2gYvCo1MQaNdFv5zElc2G6Zx6YCe1TszaYL
         WX7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722427313; x=1723032113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DdxVctv+DdSXKhp2nW8V2B7yfwAa9gWaT7Efbbf2MUs=;
        b=EofegfCWgiFE9VtAlwg+jyEShPuko99KtdT8181ut/hDPmOe6p7KqYf7NfKY6j+tv5
         xzqYGXgotG0uacDusa4QYDdNmIrFywfF6cbo4LdIqJvmBBwSm4G0fQrsH3WPY/4Bv7aK
         rd5ZjuqjF5lRWm0BH7ND5xXBfjNv8nVIMNUCnvPCGYmCu5Jon5k5yWFJk/viCcW4a41J
         CLO25EK79eCANTD4Lk+9fWZVHZj6aKdALxxnBtgXfBPwuPFgB9Z0IXeV7E3V1FmHOukZ
         tu6gzgXnNE5cTiWp1iDtDLXvyjdtv2gvR6hDM5lAHSGZ3uWCdzGD0Ef/010qwtSk03w+
         pVJg==
X-Forwarded-Encrypted: i=1; AJvYcCVYJmW/vak2r5do1xa/O9gmigZM6DAM6oCSIMjtxt/JxFIjPyHuTiYSEDC3gwjnPD+TyCaKv2hwUDNKgRBdRgpzNyAVqWya8nC9Gs0LGquXDC2/hNVbXqa0ADZb4rLFC0usq686wCOwJkqTFFkXqB5QCnXr3KSsE/k=
X-Gm-Message-State: AOJu0Yxd+I8RZMPyAfCj80cQnDlY8w/2jc+F9VmfoKaZlS24ksmCklSH
	h/PGsSHx8N+aU1T0+zG5+7tLwXZDZ4Wnc7e7rgcNPbOdkMr0TXGjCzLxn6aGHkQsinpSNIga6K/
	Wc2iu47hnmJn/h3PqXpO2uqNKSPg=
X-Google-Smtp-Source: AGHT+IFi2BbcxJpNlMrpYMLQzS7Jo6R2My/hEHuRqvwqwW1vOU0rinmMmWgsYL/ghObViGzEfNFNw52JVfzra3ViMP4=
X-Received: by 2002:ac8:5806:0:b0:44f:f9ce:25df with SMTP id
 d75a77b69052e-45004f4bf36mr164398711cf.46.1722427313075; Wed, 31 Jul 2024
 05:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240731061132.703368-1-jacobe.zang@wesion.com>
 <20240731061132.703368-5-jacobe.zang@wesion.com> <0a78a0fb-0a5e-424f-a801-4a63b9ee1a49@gmail.com>
 <3ded8aea-ee11-43da-9dd7-1259cf931747@broadcom.com>
In-Reply-To: <3ded8aea-ee11-43da-9dd7-1259cf931747@broadcom.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 31 Jul 2024 15:01:41 +0300
Message-ID: <CABjd4YxiSY0A0iVHGHw9RDey+avxmzUapoLLLyf=80MzVX0yWA@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] wifi: brcmfmac: Add optional lpo clock enable support
To: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org, krzk+dt@kernel.org, 
	heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org, 
	efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net, 
	brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com, 
	nick@khadas.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_050155_087247_D2CC2930 
X-CRM114-Status: GOOD (  39.00  )
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

T24gV2VkLCBKdWwgMzEsIDIwMjQgYXQgMjoxNeKAr1BNIEFyZW5kIHZhbiBTcHJpZWwKPGFyZW5k
LnZhbnNwcmllbEBicm9hZGNvbS5jb20+IHdyb3RlOgo+Cj4gT24gNy8zMS8yMDI0IDEyOjE2IFBN
LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IEhpIEphY29iZSwKPiA+Cj4gPgo+ID4gT24gMzEv
MDcvMjAyNCA5OjExIGFtLCBKYWNvYmUgWmFuZyB3cm90ZToKPiA+ICA+IFdpRmkgbW9kdWxlcyBv
ZnRlbiByZXF1aXJlIDMya0h6IGNsb2NrIHRvIGZ1bmN0aW9uLiBBZGQgc3VwcG9ydCB0bwo+ID4g
ID4gZW5hYmxlIHRoZSBjbG9jayB0byBQQ0llIGRyaXZlciBhbmQgbW92ZSAiYnJjbSxiY200MzI5
LWZtYWMiIGNoZWNrCj4gPiAgPiB0byB0aGUgdG9wIG9mIGJyY21mX29mX3Byb2JlCj4gPiAgPgo+
ID4gID4gQ28tZGV2ZWxvcGVkLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+ICA+
IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+ID4gID4gU2lnbmVk
LW9mZi1ieTogSmFjb2JlIFphbmcgPGphY29iZS56YW5nQHdlc2lvbi5jb20+Cj4gPiAgPiAtLS0K
PiA+ICA+ICAuLi4vbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5j
ICAgIHwgMTIgKysrKysrKysrKystCj4gPiAgPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ICA+Cj4gPiAgPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmMKPiA+IGIvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmMKPiA+ICA+IGlu
ZGV4IGU0MDZlMTE0ODFhNjIuLjdlMGEyYWQ1YzdjOGEgMTAwNjQ0Cj4gPiAgPiAtLS0gYS9kcml2
ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvb2YuYwo+ID4gID4g
KysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29m
LmMKPiA+ICA+IEBAIC02LDYgKzYsNyBAQAo+ID4gID4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+
ID4gID4gICNpbmNsdWRlIDxsaW51eC9vZl9pcnEuaD4KPiA+ICA+ICAjaW5jbHVkZSA8bGludXgv
b2ZfbmV0Lmg+Cj4gPiAgPiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ID4gID4KPiA+ICA+ICAj
aW5jbHVkZSA8ZGVmcy5oPgo+ID4gID4gICNpbmNsdWRlICJkZWJ1Zy5oIgo+ID4gID4gQEAgLTcw
LDEyICs3MSwxNiBAQCB2b2lkIGJyY21mX29mX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwgZW51
bQo+ID4gYnJjbWZfYnVzX3R5cGUgYnVzX3R5cGUsCj4gPiAgPiAgewo+ID4gID4gICAgICBzdHJ1
Y3QgYnJjbWZtYWNfc2Rpb19wZCAqc2RpbyA9ICZzZXR0aW5ncy0+YnVzLnNkaW87Cj4gPiAgPiAg
ICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqcm9vdCwgKm5wID0gZGV2LT5vZl9ub2RlOwo+ID4gID4g
KyAgICBzdHJ1Y3QgY2xrICpjbGs7Cj4gPiAgPiAgICAgIGNvbnN0IGNoYXIgKnByb3A7Cj4gPiAg
PiAgICAgIGludCBpcnE7Cj4gPiAgPiAgICAgIGludCBlcnI7Cj4gPiAgPiAgICAgIHUzMiBpcnFm
Owo+ID4gID4gICAgICB1MzIgdmFsOwo+ID4gID4KPiA+ICA+ICsgICAgaWYgKCFucCB8fCAhb2Zf
ZGV2aWNlX2lzX2NvbXBhdGlibGUobnAsICJicmNtLGJjbTQzMjktZm1hYyIpKQo+ID4gID4gKyAg
ICAgICAgcmV0dXJuOwo+ID4KPiA+IERpZCB5b3UgdGVzdCB0aGlzPyBUaGUgRFRTIHBhdGNoIHlv
dSBzZW50IGFzIHBhcnQgb2YgdGhpcyBzZXJpZXMgZG9lc24ndAo+ID4gbGlzdCAiYnJjbSxiY200
MzI5LWZtYWMiIGluIHRoZSBjb21wYXRpYmxlLCBzbyB0aGlzIHdpbGwgcHJvYmFibHkgcmV0dXJu
Cj4gPiByaWdodCBoZXJlLCBza2lwcGluZyBvdmVyIHRoZSByZXN0IG9mIHlvdXIgcGF0Y2guCj4g
Pgo+ID4gUGxlYXNlIHRlc3QgYmVmb3JlIHJlc2VuZGluZywgYm90aCB3aXRoIGFuZCB3aXRob3V0
IHRoZSBkcml2ZXIgZm9yIHRoZQo+ID4gQmx1ZXRvb3RoIHBhcnQgb2YgdGhlIGNoaXAgKHNpbmNl
IGl0IGFsc28gdG91Y2hlcyBjbG9ja3MpLgo+ID4KPiA+IFlvdSBhcmUgYWxzbyBjaGFuZ2luZyB0
aGUgYmVoYXZpb3IgZm9yIG90aGVyIHN5c3RlbXMgYnkgcHV0dGluZyB0aGlzCj4gPiBjaGVjayBm
dXJ0aGVyIHVwIHRoZSBwcm9iZSBwYXRoLCB3aGljaCBtaWdodCBicmVhayB0aGluZ3MgZm9yIG5v
IHJlYXNvbi4KPiA+IEJldHRlciBwdXQgeW91ciBjbGstcmVsYXRlZCBhZGRpdGlvbiBiZWxvdyB3
aGVyZSB0aGlzIGNoZWNrIHdhcwo+ID4gb3JpZ2luYWxseSwgcmF0aGVyIHRoYW4gcmVvcmRlciBz
dHVmZiB5b3UgZG9uJ3QgaGF2ZSB0byByZW9yZGVyLgo+Cj4gVGhhdCB3YXMgdXBvbiBteSBzdWdn
ZXN0aW9uLiBUaGF0IGNoZWNrIHdhcyBvcmlnaW5hbGx5IGF0IHRoZSB0b3Agb2YgdGhlCj4gZnVu
Y3Rpb24sIGJ1dCBwZW9wbGUgYWRkZWQgc3R1ZmYgYmVmb3JlIHRoYXQuIEkgYWdyZWUgdGhhdCBt
YWtlcyB0aGUKPiBjb21wYXRpYmxlICJicmNtLGJyY200MzI5LWZtYWMiIHJlcXVpcmVkIHdoaWNo
IGlzIHdoYXQgdGhlIHRleHR1YWwKPiBiaW5kaW5nIHN0YXRlZCBiZWZvcmUgdGhlIHN3aXRjaCB0
byBZQU1MIHdhcyBtYWRlOgo+Cj4gIiIiCj4gQnJvYWRjb20gQkNNNDN4eCBGdWxsbWFjIHdpcmVs
ZXNzIFNESU8gZGV2aWNlcwo+Cj4gVGhpcyBub2RlIHByb3ZpZGVzIHByb3BlcnRpZXMgZm9yIGNv
bnRyb2xsaW5nIHRoZSBCcm9hZGNvbSB3aXJlbGVzcwo+IGRldmljZS4gVGhlCj4gbm9kZSBpcyBl
eHBlY3RlZCB0byBiZSBzcGVjaWZpZWQgYXMgYSBjaGlsZCBub2RlIHRvIHRoZSBTRElPIGNvbnRy
b2xsZXIgdGhhdAo+IGNvbm5lY3RzIHRoZSBkZXZpY2UgdG8gdGhlIHN5c3RlbS4KPgo+IFJlcXVp
cmVkIHByb3BlcnRpZXM6Cj4KPiAgIC0gY29tcGF0aWJsZSA6IFNob3VsZCBiZSAiYnJjbSxiY200
MzI5LWZtYWMiLgo+ICIiIgo+Cj4gTm90IHN1cmUgd2hldGhlciB0aGlzIGlzIHN0aWxsIHRydWUg
Zm9yIFlBTUwgdmVyc2lvbiAocG9vciBZQU1MIHJlYWRpbmcKPiBza2lsbHMgOy0pICksIGJ1dCBp
dCBzaG91bGQgYXMgdGhlIHN3aXRjaCBmcm9tIHRleHR1YWwgdG8gWUFNTCBzaG91bGQKPiBub3Qg
aGF2ZSBjaGFuZ2VkIHRoZSBiaW5kaW5ncyBzcGVjaWZpY2F0aW9uLgo+Cj4gPiAgPiArCj4gPiAg
PiAgICAgIC8qIEFwcGxlIEFSTTY0IHBsYXRmb3JtcyBoYXZlIHRoZWlyIG93biBpZGVhIG9mIGJv
YXJkIHR5cGUsCj4gPiBwYXNzZWQgaW4KPiA+ICA+ICAgICAgICogdmlhIHRoZSBkZXZpY2UgdHJl
ZS4gVGhleSBhbHNvIGhhdmUgYW4gYW50ZW5uYSBTS1UgcGFyYW1ldGVyCj4gPiAgPiAgICAgICAq
Lwo+ID4gID4gQEAgLTExMyw4ICsxMTgsMTMgQEAgdm9pZCBicmNtZl9vZl9wcm9iZShzdHJ1Y3Qg
ZGV2aWNlICpkZXYsIGVudW0KPiA+IGJyY21mX2J1c190eXBlIGJ1c190eXBlLAo+ID4gID4gICAg
ICAgICAgb2Zfbm9kZV9wdXQocm9vdCk7Cj4gPiAgPiAgICAgIH0KPiA+ICA+Cj4gPiAgPiAtICAg
IGlmICghbnAgfHwgIW9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAiYnJjbSxiY200MzI5LWZt
YWMiKSkKPiA+ICA+ICsgICAgY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsX2VuYWJsZWQoZGV2
LCAibHBvIik7Cj4gPiAgPiArICAgIGlmICghSVNfRVJSX09SX05VTEwoY2xrKSkgewo+ID4gID4g
KyAgICAgICAgYnJjbWZfZGJnKElORk8sICJlbmFibGluZyAzMmtIeiBjbG9ja1xuIik7Cj4gPiAg
PiArICAgICAgICBjbGtfc2V0X3JhdGUoY2xrLCAzMjc2OCk7Cj4gPiAgPiArICAgIH0gZWxzZSB7
Cj4gPiAgPiAgICAgICAgICByZXR1cm47Cj4gPgo+ID4gV2h5IHJldHVybiBoZXJlPyBJZiB0aGUg
Y2xvY2sgaXMgb3B0aW9uYWwsIGEgbG90IG9mIHN5c3RlbXMgd2lsbCBub3QKPiA+IGhhdmUgaXQg
LSB0aGF0IHNob3VsZG4ndCBwcmV2ZW50IHRoZSBkcml2ZXIgZnJvbSBwcm9iaW5nLiBBbmQgeW91
IGFyZQo+ID4gc3RpbGwgbm90IGhhbmRsaW5nIHRoZSAtRVBST0JFX0RFRkVSIGNhc2Ugd2hpY2gg
d2FzIG1lbnRpb25lZCBvbiB5b3VyCj4gPiBwcmV2aW91cyBzdWJtaXNzaW9uLgo+Cj4gUmlnaHQu
IFRoZSBlbHNlIHN0YXRlbWVudCBhYm92ZSBjb3VsZC9zaG91bGQgYmU6Cj4KPiB9IGVsc2UgaWYg
KGNsayAmJiBQVFJfRVJSKGNsaykgPT0gLUVQUk9CRV9ERUZFUikgewo+ICAgICAgICAgIHJldHVy
biBQVFJfRVJSKGNsayk7Cj4gfQoKLi4uIHBsdXMgY2hhbmdlIHRoZSBmdW5jdGlvbiBwcm90b3R5
cGUgdG8gcmV0dXJuIGludCBhbmQgcHJvcGFnYXRlCnRoYXQgZXJyb3IgY29kZSB0aHJvdWdoIGJy
Y21mX2dldF9tb2R1bGVfcGFyYW0gdG8gYnJjbWZfcGNpZV9wcm9iZSdzCnJldHVybiB2YWx1ZS4g
SSBndWVzcyBjaGVja2luZyBjbGsgZm9yIE5VTEwgaXMgYWxzbyByZWR1bmRhbnQgaW4gdGhpcwpj
YXNlPwoKQmVzdCwKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
