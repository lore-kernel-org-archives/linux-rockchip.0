Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C029C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 07:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ihG3Q7yWU0xqgWmd3y/et5y3lSSRIwyY+FS4dnAMV0=; b=KH/1eiaQ6acUWp
	uHCJ1KZUCxIXLAvF6e9MFYfPB6DfdgkL+8BsB0bzAZkclV4igw85PoRNeUNSAUBNo47qNom9WLvsU
	sW0lZK/q1PxgPldhIqBVw5MEEphbd3nlOZrJUHUE8NWwEQPAR8qbckS7QNgJ6Sl1Ep+iqEzb2zrAM
	MbKfl8ffqA2pIY+BAiYwlkKGndDYB3TIoIHRH9zpUwWLm1VhTRrutRociuU/sk0v4LOEhXkSMtkRP
	vDO3xJ81y4TVp7dK5m/aDhR0bEfMz+Eku+tVUriri5SVCgKJ1j4GeNgfsge3fJ49QTOowKPQXVoMN
	gdKK6tFsqrheI+7J98Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZQhS-00000004Fut-3sGi;
	Thu, 01 Aug 2024 07:58:14 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZQgy-00000004Fo1-1slj;
	Thu, 01 Aug 2024 07:57:45 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-44ff418e040so37160221cf.2;
        Thu, 01 Aug 2024 00:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722499063; x=1723103863; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NH9ilRYLYFpvV4bBytWkKj2NHM9xGHTKENKnDvjIGns=;
        b=AW9pGWzHy6MSh7n60MWJ660YNl6dzzjvI2O3tJ8Art/hQfYACr25FKpsyAn/Cg5BKS
         R78wNkIoOu87XAVhYfziov/cwZ6SFqsCaC05tgWt7Xq6PZIrOFZtljp8w/5OBCUc1Nq/
         kiiHP67Z3fwDi8q9P9DVv2K7kWwRN2FGBqu809TxN6J1Wt05FPuXXe/Bwbve77+vedgK
         qPeghdvGkcoBDrAYXNnkLunGI4dT1SyL+hAB0u1ZHIEwLs7+jIf2OTUmRZibvpA/aes6
         w2Kr90dM1itbqLN/TsmCWkzBibf+v7NfXKZQd/zkDzw0hKKeP92cM1ni90rmwskDSK54
         Wa9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722499063; x=1723103863;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NH9ilRYLYFpvV4bBytWkKj2NHM9xGHTKENKnDvjIGns=;
        b=dDVFuX6DnLBJ2cIE7lELTRu/R+vIsoI2M+fGmBR5aKMD1tet/xHxAQ1uvZByEV30t4
         cNO/D9RPx7pbf5fTtzkrS9Fg4YN1Kqn69NFRfJIHF242CAxJG6dRAZ97dijRTEV48flv
         I3fp3kcNl5y0cOBMHJqIIuR7MkQnxwLI2Sb5rBC8sw7EtZ8ECiKIF5F3rnqkCtdwcgpJ
         0SI44eWoXFJbNAZz/Ezj7ZLuMUd0eVPS3BbxEOEgSMfuqpwdBaSKmuwl3RHbQIZ2bZcD
         8MuQLtJHT/WlC+KGHWuGidE0nmq4To5HqLgcR5Mdmqr4avMwJPIkuGZexLT6fbQTGI2X
         kq5w==
X-Forwarded-Encrypted: i=1; AJvYcCXtS6Wfkzo7VI9tnjXlvcgu5ZBExwHaYO0D5CvAqxxgBneANUewVPTEjdV3wYiOnmjiN265sP7e5xICQS3MhXOk5WvQ/Rk6IOEmiLzmHqr5oEUk/1vnG+vAd4A2LhHt4LgfVlAR6L4KU07vz2KA/8yLyLj5va9OqqI=
X-Gm-Message-State: AOJu0YxxpVYsRLcrDPIh4d+bbp5DbXbLksylzGvFmPlUEPWVXaUvwkXx
	eWwe/6LiVnCtoFn3s555BzEdCdQBsMfErP2ZoMedjbclp0blwte5gu+P8q71IR2guEzY8GQPDxZ
	tvyjj8VYGU0eWCM52qelCdWCN+pY=
X-Google-Smtp-Source: AGHT+IH9Nqcz96fXlR6qBIfn9oQsygGJT+Br+pnt3kTFU6l5J618DOIfg76qe0W8eUEc1gOKhsxpS78Zox8XqTejuMo=
X-Received: by 2002:a05:622a:206:b0:446:5787:875f with SMTP id
 d75a77b69052e-451567b4292mr18705541cf.38.1722499062896; Thu, 01 Aug 2024
 00:57:42 -0700 (PDT)
MIME-Version: 1.0
References: <20240731061132.703368-1-jacobe.zang@wesion.com>
 <20240731061132.703368-5-jacobe.zang@wesion.com> <0a78a0fb-0a5e-424f-a801-4a63b9ee1a49@gmail.com>
 <3ded8aea-ee11-43da-9dd7-1259cf931747@broadcom.com> <CABjd4YxiSY0A0iVHGHw9RDey+avxmzUapoLLLyf=80MzVX0yWA@mail.gmail.com>
 <6e34c814-a6dc-4a96-9e46-ca25af67f4f6@broadcom.com> <CABjd4YxdCh7EceYOfcFxKtV0H7Von0oZAMWD=69sM6y4-CoAQw@mail.gmail.com>
 <TYZPR03MB7001889335D58561F86978A780B22@TYZPR03MB7001.apcprd03.prod.outlook.com>
In-Reply-To: <TYZPR03MB7001889335D58561F86978A780B22@TYZPR03MB7001.apcprd03.prod.outlook.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 1 Aug 2024 10:57:31 +0300
Message-ID: <CABjd4YwCFpPerXRaR=6zd-61wDE6nH7_s0C6jMRhA4x0L6guLg@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] wifi: brcmfmac: Add optional lpo clock enable support
To: Jacobe Zang <jacobe.zang@wesion.com>
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, 
	"kvalo@kernel.org" <kvalo@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>, 
	"edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>, 
	"pabeni@redhat.com" <pabeni@redhat.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"efectn@protonmail.com" <efectn@protonmail.com>, "dsimic@manjaro.org" <dsimic@manjaro.org>, 
	"jagan@edgeble.ai" <jagan@edgeble.ai>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "arend@broadcom.com" <arend@broadcom.com>, 
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "megi@xff.cz" <megi@xff.cz>, 
	"duoming@zju.edu.cn" <duoming@zju.edu.cn>, "bhelgaas@google.com" <bhelgaas@google.com>, 
	"minipli@grsecurity.net" <minipli@grsecurity.net>, 
	"brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>, 
	"brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>, Nick Xie <nick@khadas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_005744_517137_E2684018 
X-CRM114-Status: GOOD (  44.67  )
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

T24gVGh1LCBBdWcgMSwgMjAyNCBhdCA2OjUz4oCvQU0gSmFjb2JlIFphbmcgPGphY29iZS56YW5n
QHdlc2lvbi5jb20+IHdyb3RlOgo+Cj4gPj5PbiA3LzMxLzIwMjQgMjowMSBQTSwgQWxleGV5IENo
YXJrb3Ygd3JvdGU6Cj4gPj4+IE9uIFdlZCwgSnVsIDMxLCAyMDI0IGF0IDI6MTXigK9QTSBBcmVu
ZCB2YW4gU3ByaWVsCj4gPj4+IDxhcmVuZC52YW5zcHJpZWxAYnJvYWRjb20uY29tPiB3cm90ZToK
PiA+Pj4+Cj4gPj4+PiBPbiA3LzMxLzIwMjQgMTI6MTYgUE0sIEFsZXhleSBDaGFya292IHdyb3Rl
Ogo+ID4+Pj4+IEhpIEphY29iZSwKPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gT24gMzEvMDcvMjAy
NCA5OjExIGFtLCBKYWNvYmUgWmFuZyB3cm90ZToKPiA+Pj4+PiAgID4gV2lGaSBtb2R1bGVzIG9m
dGVuIHJlcXVpcmUgMzJrSHogY2xvY2sgdG8gZnVuY3Rpb24uIEFkZCBzdXBwb3J0IHRvCj4gPj4+
Pj4gICA+IGVuYWJsZSB0aGUgY2xvY2sgdG8gUENJZSBkcml2ZXIgYW5kIG1vdmUgImJyY20sYmNt
NDMyOS1mbWFjIiBjaGVjawo+ID4+Pj4+ICAgPiB0byB0aGUgdG9wIG9mIGJyY21mX29mX3Byb2Jl
Cj4gPj4+Pj4gICA+Cj4gPj4+Pj4gICA+IENvLWRldmVsb3BlZC1ieTogT25kcmVqIEppcm1hbiA8
bWVnaUB4ZmYuY3o+Cj4gPj4+Pj4gICA+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1l
Z2lAeGZmLmN6Pgo+ID4+Pj4+ICAgPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYmUgWmFuZyA8amFjb2Jl
LnphbmdAd2VzaW9uLmNvbT4KPiA+Pj4+PiAgID4gLS0tCj4gPj4+Pj4gICA+ICAuLi4vbmV0L3dp
cmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jICAgIHwgMTIgKysrKysrKysr
KystCj4gPj4+Pj4gICA+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+ID4+Pj4+ICAgPgo+ID4+Pj4+ICAgPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
d2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmMKPiA+Pj4+PiBiL2RyaXZl
cnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jCj4gPj4+Pj4g
ICA+IGluZGV4IGU0MDZlMTE0ODFhNjIuLjdlMGEyYWQ1YzdjOGEgMTAwNjQ0Cj4gPj4+Pj4gICA+
IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9v
Zi5jCj4gPj4+Pj4gICA+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204
MDIxMS9icmNtZm1hYy9vZi5jCj4gPj4+Pj4gICA+IEBAIC02LDYgKzYsNyBAQAo+ID4+Pj4+ICAg
PiAgI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gPj4+Pj4gICA+ICAjaW5jbHVkZSA8bGludXgvb2Zf
aXJxLmg+Cj4gPj4+Pj4gICA+ICAjaW5jbHVkZSA8bGludXgvb2ZfbmV0Lmg+Cj4gPj4+Pj4gICA+
ICsjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gPj4+Pj4gICA+Cj4gPj4+Pj4gICA+ICAjaW5jbHVk
ZSA8ZGVmcy5oPgo+ID4+Pj4+ICAgPiAgI2luY2x1ZGUgImRlYnVnLmgiCj4gPj4+Pj4gICA+IEBA
IC03MCwxMiArNzEsMTYgQEAgdm9pZCBicmNtZl9vZl9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYs
IGVudW0KPiA+Pj4+PiBicmNtZl9idXNfdHlwZSBidXNfdHlwZSwKPiA+Pj4+PiAgID4gIHsKPiA+
Pj4+PiAgID4gICAgICBzdHJ1Y3QgYnJjbWZtYWNfc2Rpb19wZCAqc2RpbyA9ICZzZXR0aW5ncy0+
YnVzLnNkaW87Cj4gPj4+Pj4gICA+ICAgICAgc3RydWN0IGRldmljZV9ub2RlICpyb290LCAqbnAg
PSBkZXYtPm9mX25vZGU7Cj4gPj4+Pj4gICA+ICsgICAgc3RydWN0IGNsayAqY2xrOwo+ID4+Pj4+
ICAgPiAgICAgIGNvbnN0IGNoYXIgKnByb3A7Cj4gPj4+Pj4gICA+ICAgICAgaW50IGlycTsKPiA+
Pj4+PiAgID4gICAgICBpbnQgZXJyOwo+ID4+Pj4+ICAgPiAgICAgIHUzMiBpcnFmOwo+ID4+Pj4+
ICAgPiAgICAgIHUzMiB2YWw7Cj4gPj4+Pj4gICA+Cj4gPj4+Pj4gICA+ICsgICAgaWYgKCFucCB8
fCAhb2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUobnAsICJicmNtLGJjbTQzMjktZm1hYyIpKQo+ID4+
Pj4+ICAgPiArICAgICAgICByZXR1cm47Cj4gPj4+Pj4KPiA+Pj4+PiBEaWQgeW91IHRlc3QgdGhp
cz8gVGhlIERUUyBwYXRjaCB5b3Ugc2VudCBhcyBwYXJ0IG9mIHRoaXMgc2VyaWVzIGRvZXNuJ3QK
PiA+Pj4+PiBsaXN0ICJicmNtLGJjbTQzMjktZm1hYyIgaW4gdGhlIGNvbXBhdGlibGUsIHNvIHRo
aXMgd2lsbCBwcm9iYWJseSByZXR1cm4KPiA+Pj4+PiByaWdodCBoZXJlLCBza2lwcGluZyBvdmVy
IHRoZSByZXN0IG9mIHlvdXIgcGF0Y2guCj4gPj4+Pj4KPiA+Pj4+PiBQbGVhc2UgdGVzdCBiZWZv
cmUgcmVzZW5kaW5nLCBib3RoIHdpdGggYW5kIHdpdGhvdXQgdGhlIGRyaXZlciBmb3IgdGhlCj4g
Pj4+Pj4gQmx1ZXRvb3RoIHBhcnQgb2YgdGhlIGNoaXAgKHNpbmNlIGl0IGFsc28gdG91Y2hlcyBj
bG9ja3MpLgo+ID4+Pj4+Cj4gPj4+Pj4gWW91IGFyZSBhbHNvIGNoYW5naW5nIHRoZSBiZWhhdmlv
ciBmb3Igb3RoZXIgc3lzdGVtcyBieSBwdXR0aW5nIHRoaXMKPiA+Pj4+PiBjaGVjayBmdXJ0aGVy
IHVwIHRoZSBwcm9iZSBwYXRoLCB3aGljaCBtaWdodCBicmVhayB0aGluZ3MgZm9yIG5vIHJlYXNv
bi4KPiA+Pj4+PiBCZXR0ZXIgcHV0IHlvdXIgY2xrLXJlbGF0ZWQgYWRkaXRpb24gYmVsb3cgd2hl
cmUgdGhpcyBjaGVjayB3YXMKPiA+Pj4+PiBvcmlnaW5hbGx5LCByYXRoZXIgdGhhbiByZW9yZGVy
IHN0dWZmIHlvdSBkb24ndCBoYXZlIHRvIHJlb3JkZXIuCj4gPj4+Pgo+ID4+Pj4gVGhhdCB3YXMg
dXBvbiBteSBzdWdnZXN0aW9uLiBUaGF0IGNoZWNrIHdhcyBvcmlnaW5hbGx5IGF0IHRoZSB0b3Ag
b2YgdGhlCj4gPj4+PiBmdW5jdGlvbiwgYnV0IHBlb3BsZSBhZGRlZCBzdHVmZiBiZWZvcmUgdGhh
dC4gSSBhZ3JlZSB0aGF0IG1ha2VzIHRoZQo+ID4+Pj4gY29tcGF0aWJsZSAiYnJjbSxicmNtNDMy
OS1mbWFjIiByZXF1aXJlZCB3aGljaCBpcyB3aGF0IHRoZSB0ZXh0dWFsCj4gPj4+PiBiaW5kaW5n
IHN0YXRlZCBiZWZvcmUgdGhlIHN3aXRjaCB0byBZQU1MIHdhcyBtYWRlOgo+ID4+Pj4KPiA+Pj4+
ICIiIgo+ID4+Pj4gQnJvYWRjb20gQkNNNDN4eCBGdWxsbWFjIHdpcmVsZXNzIFNESU8gZGV2aWNl
cwo+ID4+Pj4KPiA+Pj4+IFRoaXMgbm9kZSBwcm92aWRlcyBwcm9wZXJ0aWVzIGZvciBjb250cm9s
bGluZyB0aGUgQnJvYWRjb20gd2lyZWxlc3MKPiA+Pj4+IGRldmljZS4gVGhlCj4gPj4+PiBub2Rl
IGlzIGV4cGVjdGVkIHRvIGJlIHNwZWNpZmllZCBhcyBhIGNoaWxkIG5vZGUgdG8gdGhlIFNESU8g
Y29udHJvbGxlciB0aGF0Cj4gPj4+PiBjb25uZWN0cyB0aGUgZGV2aWNlIHRvIHRoZSBzeXN0ZW0u
Cj4gPj4+Pgo+ID4+Pj4gUmVxdWlyZWQgcHJvcGVydGllczoKPiA+Pj4+Cj4gPj4+PiAgICAtIGNv
bXBhdGlibGUgOiBTaG91bGQgYmUgImJyY20sYmNtNDMyOS1mbWFjIi4KPiA+Pj4+ICIiIgo+ID4+
Pj4KPiA+Pj4+IE5vdCBzdXJlIHdoZXRoZXIgdGhpcyBpcyBzdGlsbCB0cnVlIGZvciBZQU1MIHZl
cnNpb24gKHBvb3IgWUFNTCByZWFkaW5nCj4gPj4+PiBza2lsbHMgOy0pICksIGJ1dCBpdCBzaG91
bGQgYXMgdGhlIHN3aXRjaCBmcm9tIHRleHR1YWwgdG8gWUFNTCBzaG91bGQKPiA+Pj4+IG5vdCBo
YXZlIGNoYW5nZWQgdGhlIGJpbmRpbmdzIHNwZWNpZmljYXRpb24uCj4gPj4+Pgo+ID4+Pj4+ICAg
PiArCj4gPj4+Pj4gICA+ICAgICAgLyogQXBwbGUgQVJNNjQgcGxhdGZvcm1zIGhhdmUgdGhlaXIg
b3duIGlkZWEgb2YgYm9hcmQgdHlwZSwKPiA+Pj4+PiBwYXNzZWQgaW4KPiA+Pj4+PiAgID4gICAg
ICAgKiB2aWEgdGhlIGRldmljZSB0cmVlLiBUaGV5IGFsc28gaGF2ZSBhbiBhbnRlbm5hIFNLVSBw
YXJhbWV0ZXIKPiA+Pj4+PiAgID4gICAgICAgKi8KPiA+Pj4+PiAgID4gQEAgLTExMyw4ICsxMTgs
MTMgQEAgdm9pZCBicmNtZl9vZl9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsIGVudW0KPiA+Pj4+
PiBicmNtZl9idXNfdHlwZSBidXNfdHlwZSwKPiA+Pj4+PiAgID4gICAgICAgICAgb2Zfbm9kZV9w
dXQocm9vdCk7Cj4gPj4+Pj4gICA+ICAgICAgfQo+ID4+Pj4+ICAgPgo+ID4+Pj4+ICAgPiAtICAg
IGlmICghbnAgfHwgIW9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAiYnJjbSxiY200MzI5LWZt
YWMiKSkKPiA+Pj4+PiAgID4gKyAgICBjbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWxfZW5hYmxl
ZChkZXYsICJscG8iKTsKPiA+Pj4+PiAgID4gKyAgICBpZiAoIUlTX0VSUl9PUl9OVUxMKGNsaykp
IHsKPiA+Pj4+PiAgID4gKyAgICAgICAgYnJjbWZfZGJnKElORk8sICJlbmFibGluZyAzMmtIeiBj
bG9ja1xuIik7Cj4gPj4+Pj4gICA+ICsgICAgICAgIGNsa19zZXRfcmF0ZShjbGssIDMyNzY4KTsK
PiA+Pj4+PiAgID4gKyAgICB9IGVsc2Ugewo+ID4+Pj4+ICAgPiAgICAgICAgICByZXR1cm47Cj4g
Pj4+Pj4KPiA+Pj4+PiBXaHkgcmV0dXJuIGhlcmU/IElmIHRoZSBjbG9jayBpcyBvcHRpb25hbCwg
YSBsb3Qgb2Ygc3lzdGVtcyB3aWxsIG5vdAo+ID4+Pj4+IGhhdmUgaXQgLSB0aGF0IHNob3VsZG4n
dCBwcmV2ZW50IHRoZSBkcml2ZXIgZnJvbSBwcm9iaW5nLiBBbmQgeW91IGFyZQo+ID4+Pj4+IHN0
aWxsIG5vdCBoYW5kbGluZyB0aGUgLUVQUk9CRV9ERUZFUiBjYXNlIHdoaWNoIHdhcyBtZW50aW9u
ZWQgb24geW91cgo+ID4+Pj4+IHByZXZpb3VzIHN1Ym1pc3Npb24uCj4gPj4+Pgo+ID4+Pj4gUmln
aHQuIFRoZSBlbHNlIHN0YXRlbWVudCBhYm92ZSBjb3VsZC9zaG91bGQgYmU6Cj4gPj4+Pgo+ID4+
Pj4gfSBlbHNlIGlmIChjbGsgJiYgUFRSX0VSUihjbGspID09IC1FUFJPQkVfREVGRVIpIHsKPiA+
Pj4+ICAgICAgICAgICByZXR1cm4gUFRSX0VSUihjbGspOwo+ID4+Pj4gfQo+ID4+Pgo+ID4+PiAu
Li4gcGx1cyBjaGFuZ2UgdGhlIGZ1bmN0aW9uIHByb3RvdHlwZSB0byByZXR1cm4gaW50IGFuZCBw
cm9wYWdhdGUKPiA+Pj4gdGhhdCBlcnJvciBjb2RlIHRocm91Z2ggYnJjbWZfZ2V0X21vZHVsZV9w
YXJhbSB0byBicmNtZl9wY2llX3Byb2JlJ3MKPiA+Pj4gcmV0dXJuIHZhbHVlLiBJIGd1ZXNzIGNo
ZWNraW5nIGNsayBmb3IgTlVMTCBpcyBhbHNvIHJlZHVuZGFudCBpbiB0aGlzCj4gPj4+IGNhc2U/
Cj4gPj4KPiA+Pk9ubHkgd2FudGVkIHRvIGdpdmUgdGhlIHN1Z2dlc3Rpb24gdG8gZ2V0IHN0YXJ0
ZWQuIFByb3BhZ2F0aW5nIHRoZQo+ID4+cmV0dXJuIHZhbHVlIHNlZW1lZCBvYnZpb3VzIHRvIG1l
LCBidXQgeW91IGFyZSBhYnNvbHV0ZWx5IHJpZ2h0Lgo+ID4+UFRSX0VSUihOVUxMKSB3aWxsIHBy
b2JhYmx5IGJlIHNvbWV0aGluZyBlbHNlIHRoYW4gLUVQUk9CRV9ERUZFUiBidXQgaXQKPiA+PnNl
ZW1zIG9kZCB0byBtZS4gTWF5YmUgUFRSX0VSUl9PUl9aRVJPKGNsaykgaXMgYSBiZXR0ZXIgb3B0
aW9uIGhlcmUuCj4gPgo+ID4gSW5kZWVkLiBQZXJoYXBzIHNvbWV0aGluZyBhbG9uZyB0aGUgbGlu
ZXMgb2Y6Cj4gPgo+ID4gICAgICAgIGNsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVk
KGRldiwgImxwbyIpOwo+ID4gICAgICAgIGlmICghSVNfRVJSX09SX05VTEwoY2xrKSkgewo+ID4g
ICAgICAgICAgICAgICAgYnJjbWZfZGJnKElORk8sICJlbmFibGluZyAzMmtIeiBjbG9ja1xuIik7
Cj4gPiAgICAgICAgICAgICAgICByZXR1cm4gY2xrX3NldF9yYXRlKGNsaywgMzI3NjgpOwo+ID4g
ICAgICAgIH0gZWxzZSB7Cj4gPiAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUl9PUl9aRVJP
KGNsayk7Cj4gPiAgICAgICAgfQo+ID4KPiA+IC4uLiB3aGljaCBzaG91bGQgdGhlbiBnbyBhdCB0
aGUgdmVyeSBlbmQgb2YgYnJjbWZfb2ZfcHJvYmUuIEFuZCBhbGwgb2YKPgo+IEJ1dCBiZWZvcmUg
ZW5kIG9mIGJyY21mX29mX3Byb2JlIGlzIHRvIHNldCBpbnRlcnJ1cHQgY29uZmlndXJhdGlvbiB3
aGljaAo+IHdpZmkgY2hpcCBjb25uZWN0IHZpYSBzZGlvLiBMaWtlIHRoaXM6Cj4gYGBgCj4gICAg
ICAgICBpZiAoYnVzX3R5cGUgIT0gQlJDTUZfQlVTVFlQRV9TRElPKQo+ICAgICAgICAgICAgICAg
ICByZXR1cm47Cj4KPiAgICAgICAgIGlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihucCwgImJyY20s
ZHJpdmUtc3RyZW5ndGgiLCAmdmFsKSA9PSAwKQo+ICAgICAgICAgICAgICAgICBzZGlvLT5kcml2
ZV9zdHJlbmd0aCA9IHZhbDsKPgo+ICAgICAgICAgLyogbWFrZSBzdXJlIHRoZXJlIGFyZSBpbnRl
cnJ1cHRzIGRlZmluZWQgaW4gdGhlIG5vZGUgKi8KPiAgICAgICAgIGlmICghb2ZfcHJvcGVydHlf
cHJlc2VudChucCwgImludGVycnVwdHMiKSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+Cj4g
ICAgICAgICBpcnEgPSBpcnFfb2ZfcGFyc2VfYW5kX21hcChucCwgMCk7Cj4gICAgICAgICBpZiAo
IWlycSkgewo+ICAgICAgICAgICAgICAgICBicmNtZl9lcnIoImludGVycnVwdCBjb3VsZCBub3Qg
YmUgbWFwcGVkXG4iKTsKPiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ICAgICAgICAgfQo+ICAg
ICAgICAgaXJxZiA9IGlycWRfZ2V0X3RyaWdnZXJfdHlwZShpcnFfZ2V0X2lycV9kYXRhKGlycSkp
Owo+Cj4gICAgICAgICBzZGlvLT5vb2JfaXJxX3N1cHBvcnRlZCA9IHRydWU7Cj4gICAgICAgICBz
ZGlvLT5vb2JfaXJxX25yID0gaXJxOwo+ICAgICAgICAgc2Rpby0+b29iX2lycV9mbGFncyA9IGly
cWY7Cj4gYGBgCj4gU28gSSB0aGluayB0aGUgaW50ZXJydXB0IHNob3VsZCBiZSBzZXQgaW4gdGhl
IGlmIHN0YXRlbWVudCB3aGlsZQo+IGJ1c190eXBlPT1CUkNNRl9CVVNUWVBFX1NESU8sIGFuZCBh
ZGQgZWxzZSBzdGF0ZW1lbnQKPiB0byBlbmFibGUgY2xvY2sob3Igc2ltcGx5IHB1dCBpdCBhdCB0
aGUgZW5kIGFzIEFsZXhleSBzYWlkKS4gQW5kCj4gY2FuIGFsc28gdXNlIGVsc2UtaWYgc3RhdGVt
ZW50IHRvIGRlYWwgd2l0aAo+IGJ1c190eXBlID09IEJSQ01GX0JVU1RZUEVfVVNCIG9yIFBDSUUg
aW4gdGhlIGZ1dHVyZS4KClNESU8gZGV2aWNlcyBtaWdodCBhbHNvIHdhbnQgdG8gZW5hYmxlIGEg
Y2xvY2ssIHNvIEkgdGhpbmsgd3JhcHBpbmcKdGhlIGRyaXZlIHN0cmVuZ3RoIGFuZCBpbnRlcnJ1
cHRzIGhhbmRsaW5nIGludG8gYW4gaWYgc3RhdGVtZW50IGFuZApwdXR0aW5nIHRoZSBjbG9jay1y
ZWxhdGVkIHN0dWZmIHJpZ2h0IGFmdGVyIGl0IChidXQgbm90IGluIHRoZSBlbHNlCmJsb2NrKSBp
cyBiZXR0ZXIuCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
