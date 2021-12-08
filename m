Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A77A6C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 15:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uM4g2MdrCcWOZtbV5nc2p2ZjRb7FkqU66XK6E17UkzM=; b=wjyvWNZjy1yHkr
	fvBLt4KCcG10xLIvdBozcYbxP/1luaAqpm2lHR2sYeMPkA7C7DdwNw0UeQkUuVMJpbqGew0p/PQG0
	z5WLn+xOV8b7izfUua4PXuC5a3KJ7wk4f8lR6sj+JQDIR2AIYDSpDZsRW97Sm8PW19Fmqr2GDVFPt
	nwxJrUEYBmJjo/xBjMw0w4KEGvDDEQ8r38IbzH1TEagad+RUbRXFhJfhR3q19y1HJ/SXEtlj3vsZs
	WbUKtmd8mV1ML47O4LXwckq0kXX02Jlg/wfhfrm6vxmEY6NAUnfvH3XA4BlfJf/vb0zMqydWKxkEG
	uHLsGpKnkYEpsb7qjMKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muzKg-00DRYo-Sr; Wed, 08 Dec 2021 15:58:14 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muzKd-00DRXN-GW; Wed, 08 Dec 2021 15:58:13 +0000
Received: by mail-lf1-x12a.google.com with SMTP id z21so6454144lfu.8;
 Wed, 08 Dec 2021 07:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=itzT9b9xcxAMgbIBHDRk8S7CZMk+weB3I8iE7l5FbcI=;
 b=F+9H0Veesl4+ZWQUDDKxojkO79M45ZQBBdkoGgueHD6G9aie/c0AroFcz4NJ0X1X7i
 947z5gRyw74N3uT1vyhWQWMFu2GFIpCO/8nBVhIy9nSdn11hmG+DF2A0WgL6EFv13Oea
 LXT8KlTeAxfO0SGdzA28TOYej8AO6yHMFwcWxn2Yr8UvpR+aqvFOhtlkzwD0LZIde6x/
 XvgJv1+xHjy4liFurIncl3/U+p7SvCQD8TOP5cUqldY/QOSFebRjOpkWayl/oMk7aX1w
 BTT/jrufO/Ym0cz/ABtwRm3mZxflD8pB4EQoUUgyBsSN8eQjH2VkhJfqugbMiMSxYfou
 /XPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=itzT9b9xcxAMgbIBHDRk8S7CZMk+weB3I8iE7l5FbcI=;
 b=SmiPZxxRsN36XCoVaUEHE0XebdhsApFtVa97LM0+uKYEf6ka4/fS5NqNsD1f7qAt1x
 2N62wJxx3RT+YVCbdJlfXJvOjAAac3VIwhEVniqZyNgPZCjW15JugAIyhBsOAwf2ledk
 8S0ShTZcMg7QrvP7bKbFjWE17QS+8Y3wVYGjIpbF9nH8sxqv4KCdsoFaVoJlb1iylp/l
 JsnWqlgB6fz3gRnkYeRSZ1B6d7IxbidQLZbTEj+0XGwqkn6vxUe5PnRHOZ9IY9YAGn+s
 kVeV841tPcnlyelm3ZYChv7wiIeWPO5AXQisSZVrO1qltKGCB1Tk3cgmm8Mh93MVrpQu
 D/Dg==
X-Gm-Message-State: AOAM5331mlvsWpcRpYCcTM6GX4hwF5xqY3dLxp/NKMxIJXs4qlAm5T2b
 U2hMkfYyh6M9lOrwdmvKzODw6U0Sg6uahv9/M3InB6o2VgqepQ==
X-Google-Smtp-Source: ABdhPJz4lC3SNQSDLzASZyEzONDA4JkupkPezFue2aBnBln5KAlAio0jqvELL4NrsvzIkzCMVTKh8oZRObFbnyrtoN4=
X-Received: by 2002:a05:6512:33c4:: with SMTP id
 d4mr313689lfg.182.1638979088418; 
 Wed, 08 Dec 2021 07:58:08 -0800 (PST)
MIME-Version: 1.0
References: <20211207015446.1250854-1-aford173@gmail.com>
 <f85da774-ccb3-85de-edd6-5333ed8d0503@collabora.com>
 <5a8b84e91bd8e7670a0d0108e4affe9b964202cb.camel@pengutronix.de>
 <4cc3404b-7f8a-6c87-8c1c-ace399f9edd3@collabora.com>
 <CAHCN7xJJfBXdK6B1tHXjmja4Lr=Q-Uony+QWcvVqoQp36RLY=w@mail.gmail.com>
 <7bbcee7d8d52cab00635037c35c81b43ce34ec76.camel@pengutronix.de>
In-Reply-To: <7bbcee7d8d52cab00635037c35c81b43ce34ec76.camel@pengutronix.de>
From: Chris Healy <cphealy@gmail.com>
Date: Wed, 8 Dec 2021 07:57:57 -0800
Message-ID: <CAFXsbZpq-X=MC2ZXsMx0175SHxeHJQ88wOm9reEJqQfm_bw43A@mail.gmail.com>
Subject: Re: [RFC V2 0/6] media: Hantro: Split iMX8MQ VPU into G1 and G2 with
 blk-ctrl support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Adam Ford <aford173@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 linux-media <linux-media@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_075811_579695_9F800D28 
X-CRM114-Status: GOOD (  47.69  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBEZWMgOCwgMjAyMSBhdCA3OjM5IEFNIEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1
dHJvbml4LmRlPiB3cm90ZToKPgo+IEFtIE1pdHR3b2NoLCBkZW0gMDguMTIuMjAyMSB1bSAwOTox
MyAtMDYwMCBzY2hyaWViIEFkYW0gRm9yZDoKPiA+IE9uIFdlZCwgRGVjIDgsIDIwMjEgYXQgNzoz
NiBBTSBCZW5qYW1pbiBHYWlnbmFyZAo+ID4gPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5j
b20+IHdyb3RlOgo+ID4gPgo+ID4gPgo+ID4gPiBMZSAwOC8xMi8yMDIxIMOgIDExOjMyLCBMdWNh
cyBTdGFjaCBhIMOpY3JpdCA6Cj4gPiA+ID4gQW0gTWl0dHdvY2gsIGRlbSAwOC4xMi4yMDIxIHVt
IDEwOjMyICswMTAwIHNjaHJpZWIgQmVuamFtaW4gR2FpZ25hcmQ6Cj4gPiA+ID4gPiBMZSAwNy8x
Mi8yMDIxIMOgIDAyOjU0LCBBZGFtIEZvcmQgYSDDqWNyaXQgOgo+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gQ3VycmVudGx5LCB0aGUgVlBVIGluIHRoZSBpLk1ROE1RIGlzIGFwcGVhcmluZyBhcyBvbmUg
Y29kZWMsIGJ1dCBpbgo+ID4gPiA+ID4gPiByZWFsaXR5LCBpdCdzIHR3byBJUCBibG9ja3MgY2Fs
bGVkIEcxIGFuZCBHMi4gIFRoZXJlIGlzIGluaXRpYWxpemF0aW9uCj4gPiA+ID4gPiA+IGNvZGUg
aW4gVlBVIGNvZGUgdG8gcHVsbCBzb21lIGNsb2NrcywgcmVzZXRzIGFuZCBvdGhlciBmZWF0dXJl
cyB3aGljaAo+ID4gPiA+ID4gPiBoYXMgYmVlbiBpbnRlZ3JhdGVkIGludG8gdGhlIHZwdS1ibGst
Y3RybCBmb3IgdGhlIGkuTVg4TSBNaW5pIGFuZCBhCj4gPiA+ID4gPiA+IHNpbWlsYXIgbWV0aG9k
IGNhbiBiZSB1c2VkIHRvIG1ha2UgdGhlIFZQVSBjb2RlYydzIG9wZXJhdGUgYXMKPiA+ID4gPiA+
ID4gc3RhbmQtYWxvbmUgY29yZXMgd2l0aG91dCBoYXZpbmcgdG8ga25vdyB0aGUgZGV0YWlscyBv
ZiBlYWNoIG90aGVyCj4gPiA+ID4gPiA+IG9yIHRoZSBxdWlya3MgdW5pcXVlIHRvIHRoZSBpLk1Y
OE1RLCBzbyB0aGUgcmVtYWluaW5nIGNvZGUgY2FuIGJlCj4gPiA+ID4gPiA+IGxlZnQgbW9yZSBn
ZW5lcmljLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGlzIHNlcmllcyB3YXMgc3RhcnRlZCBi
eSBMdWNhcyBTdGFjaCB3aXRoIG9uZSBieSBCZW5qYW1pbiBHYWlnbmFyZC4KPiA+ID4gPiA+ID4g
TW9zdCBwYXRjaGVzIGhhdmUgYmVlbiBtb2RpZmllZCBzbGlnaHRseSBieSBtZS4gIEl0J3MgaW4g
YW4gUkZDIHN0YXRlCj4gPiA+ID4gPiA+IGJlY2F1c2UgSSB3YXNuJ3Qgc3VyZSBob3cgdG8gYmVz
dCBoYW5kbGUgdGhlIHNpZ25hdHVyZXMgYW5kIHdhc24ndCBzdXJlCj4gPiA+ID4gPiA+IGlmIEkg
Y291bGQgYmFzZSBpdCBvZmYgdGhlIGJyYW5jaCBJIGRpZC4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gU2luY2UgdGhlIGctc3RyZWFtZXIgYW5kIG1lZGlhIHRyZWVzIGFyZSBpbiBhIGNvbnN0YW50
IHN0YXRlIG9mCj4gPiA+ID4gPiA+IGNoYW5nZSwgdGhpcyBzZXJpZXMgaXMgYmFzZWQgb24KPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gZ2l0Oi8vbGludXh0di5vcmcvaHZlcmt1aWwvbWVkaWFfdHJl
ZS5naXQgZm9yLXY1LjE3ZQo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGUgZG93bnN0cmVhbSBj
b2RlIGZyb20gTlhQIHNob3dzIHRoZSBHMSBhbmQgRzIgY2xvY2tzIHJ1bm5pbmcKPiA+ID4gPiA+
ID4gYXQgNjAwTUh6LCBidXQgYmV0d2VlbiB0aGUgVFJNIGFuZCB0aGUgZGF0YXNoZWV0LCB0aGVy
ZSBpcyBzb21lCj4gPiA+ID4gPiA+IGRpc2NyZXBhbmN5LiAgQmVjYXVzZSB0aGUgTlhQIHJlZmVy
ZW5jZSBjb2RlIHVzZWQgNjAwTUh6LCB0aGF0IGlzCj4gPiA+ID4gPiA+IHdoYXQgd2FzIGNob3Nl
biBoZXJlLiAgVXNlcnMgd2hvIG5lZWQgdG8gYWRqdXN0IHRoZWlyIEcxIGFuZCBHMgo+ID4gPiA+
ID4gPiBjbG9ja3MgY2FuIGRvIHNvIGluIHRoZWlyIGJvYXJkIGZpbGVzLgo+ID4gPiA+ID4gSGkg
QWRhbSwKPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2hlcywgSSBoYXZl
IGJlZW4gYWJsZSB0byByZXByb2R1Y2UgVlA5IHJlc3VsdHMgb24gbXkgc2lkZSAoRmx1c3RlciAx
NDcvMzAzKS4KPiA+ID4gPiA+IEluIHBhc3QgSSBoYXZlIG5vdGljZSBzcHVyaW91cyBlcnJvcnMg
d2hlbiB1c2luZyA2MDBNSHogY2xvY2sgb24gSEVWQyBkZWNvZGUgYnV0IG5vdCB3aXRoIDMwME1I
ei4KPiA+ID4KPiA+ID4gVGhlIHJlc3VsdHMgZm9yIEZsdXN0ZXIgSEVWQyBhcmUgNzcvMTQ3IHNv
IG5vIHJlZ3Jlc3Npb25zIDotKQo+ID4gPgo+ID4gPiBSZWdhcmRzLAo+ID4gPiBCZW5qYW1pbgo+
ID4gPgo+ID4gPiA+ID4gVGhlIG1heCBzdXBwb3J0ZWQgRzIgY2xvY2sgZnJlcXVlbmN5IGlzIDY2
ME1IeiBidXQgbmVlZHMgYSBoaWdoZXIKPiA+ID4gPiA+IHZvbHRhZ2UuIFRoZSBtYXhpbXVtIHN1
cHBvcnRlZCAgZnJlcXVlbmN5IGF0IHRoZSBkZWZhdWx0IDAuOVYgaXMKPiA+ID4gPiA+IDU1ME1I
ei4gV2Ugc2hvdWxkIG5vdCBjb25maWd1cmUgdGhlIGNsb2NrcyBmb3IgdGhlIGhpZ2hlciB0aGFu
IHRoYXQsIGFzCj4gPiA+ID4gPiBsb25nIGFzIHRoZXJlIGlzIG5vIHN1cHBvcnQgaW4gdGhlIFZQ
VSBkcml2ZXIgdG8gc2NhbGUgdGhlIHZvbHRhZ2UKPiA+ID4gPiA+IGFsb25nIHdpdGggdGhlIGZy
ZXF1ZW5jeS4gU2FtZSBhcyB3aXRoIHRoZSBHUFUgd2Ugc2hvdWxkIHN0aWNrIHRvIGJhc2UKPiA+
ID4gPiA+IGZyZXF1ZW5jeSBsZXZlbHMgZm9yIHRoZSBub21pbmFsIG9wZXJhdGluZyBtb2RlLgo+
ID4KPiA+IEx1Y2FzLAo+ID4KPiA+IEFmdGVyIHJldmlld2luZyB0aGUgY29tbWVudHMgZnJvbSBC
ZW5qYW1pbiwgSSByZS1yYW4gdGhlIFZQOSB0ZXN0cwo+ID4gd2l0aCB0aGUgRzIgcnVubmluZyBh
dCAzMDBNSHosYW5kIHRoZSBudW1iZXIgb2YgcGFzc2luZyBWUDkgdGVzdHMKPiA+IGluY3JlYXNl
ZCB0byAxNDggZnJvbSAxNDQgd2l0aCBhbiBpbmNyZWFzZSBvZiB0aW1lIHRvIDI1MC41MDIgc2Vj
cwo+ID4gZnJvbSAxNjIuNjY1IHNlY3MuCj4gPgo+ID4gV2hpbGUgdGhlIGRhdGFzaGVldCByZWFk
cyB0aGF0IHRoZSBHMiBjYW4gcnVuIGZhc3RlciwgdGhlIGkuTVggOE0KPiA+IER1YWwvOE0gUXVh
ZExpdGUvOE0gUXVhZCBBcHBsaWNhdGlvbnMgUHJvY2Vzc29ycyBSZWZlcmVuY2UgTWFudWFsLAo+
ID4gUmV2LiAzLjEsIDA2LzIwMjEsIHRhYmxlIDUtMSAgc2hvd3MgdGhlIFZQVV9HMl9DTEtfUk9P
VCBoYXMgYSBtYXgKPiA+IGNsb2NrIG9mIDMwME1Iei4gIEkgbWlnaHQgYmUgaW5jbGluZWQgdG8g
YWdyZWUgd2l0aCBCZW5qYW1pbiBvbiB0aGUKPiA+IDMwME1IeiBhbmQgbGV0IHBlb3BsZSB3aG8g
d2FudCB0byBwdXNoIHRoZWlyIGhhcmR3YXJlIG92ZXJ3cml0ZSB0aGUKPiA+IGRlZmF1bHQgY2xv
Y2tzIHNpbmNlIGl0IGluY3JlYXNlcyBmdW5jdGlvbmFsaXR5Lgo+ID4KPiBJJ20gcXVpdGUgc3Vy
cHJpc2VkIHRoYXQgdGhlIEcyIGNvZGVjIHNob3VsZCBoYXZlIHN1Y2ggYSBtdWNoIGxvd2VyIG1h
eAo+IGZyZXF1ZW5jeSBjb21wYXJlZCB3aXRoIHRoZSBHMS4gV2hpbGUgdGhlIHRhYmxlIGZyb20g
dGhlIFJNIGhhc24ndCBiZWVuCj4gb2J2aW91c2x5IGluY29ycmVjdCBmb3IgYW55IG90aGVyIGNs
b2NrLCBJJ20gc3RpbGwgaW5jbGluZWQgdG8gYmVsaWV2ZQo+IHRoZSBmcmVxdWVuY2llcyBzdGF0
ZWQgaW4gdGhlIGRhdGFzaGVldC4KPgo+ID4gSSB3b25kZXIgaWYgc29tZW9uZSBmcm9tIE5YUCBj
YW4gY29tbWVudAo+ID4KPiBZZWEsIG5vdCBzdXJlIGhvdyB0byBwcm9jZWVkIGhlcmUuIDMwME1I
eiBpcyB0aGUgc2FmZSBiZXQsIGJ1dCB3ZSBhcmUKPiBsZWF2aW5nIHF1aXRlIHNvbWUgcGVyZm9y
bWFuY2Ugb24gdGhlIHRhYmxlIGlmIHRoZSBkYXRhc2hlZXQgaXMKPiBjb3JyZWN0LiBXaXRob3V0
IHNvbWUgaGVscCBmcm9tIE5YUCBpdCdzIHByb2JhYmx5IGhhcmQgdG8gdmFsaWRhdGUKPiB3aGlj
aCBtYXggZnJlcXVlbmN5IHN0YXRlbWVudCBpcyBjb3JyZWN0LiBJdCBkb2Vzbid0IHJlYWxseSBo
ZWxwIHRoYXQKPiB0aGUgTlhQIGRvd25zdHJlYW0ga2VybmVsIHNlZW1zIHRvIGRyaXZlIHRoZSBH
MiBhdCA2MDBNSHosIHdoaWNoIGlzCj4gbmVpdGhlciB0aGUgNTUwTUh6IG5vbWluYWwgbW9kZSBt
YXgsIG5vciB0aGUgNjYwTUh6IG92ZXJkcml2ZSBtb2RlIG1heC4KCkFjY29yZGluZyB0byB0aGUg
TlhQIGkuTVg4TVEgZG9jcywgIlRoZSBHMiBkZWNvZGVyIGNvbmZvcm1zIHRvIHRoZQpIRVZDIE1h
aW4vTWFpbiAxMCBwcm9maWxlcyBhbmQgY2FuIGRlY29kZSBzdHJlYW1zIHVwIHRvIGxldmVsIDUu
MS4iCgpJZiBJJ20gcmVhZGluZyB0aGUgbGV2ZWxzIGNvcnJlY3RseSwgbGV2ZWwgNS4xID0gNCww
OTbDlzIsMTYwQDYwLjAuICBJZgp0aGUgZGVjb2RlciBjYW4gYWNoaWV2ZSB0aGlzIHRocm91Z2hw
dXQgYXQgMzAwTUh6LCB0aGVuIHRoZXJlIHNob3VsZApiZSBubyByZWFzb24gdG8gZ28gaGlnaGVy
PyAgTXkgc3BlY3VsYXRpb24gdGhvdWdoIGlzIHRoYXQgd2hlbiBydW4gYXQKMzAwTUh6LCB0aGUg
ZGVjb2RlciBpcyBub3QgYWJsZSB0byBkZWNvZGUgdGhpcyBmYXN0LgoKQWRhbSwgY2FuIHlvdSBk
ZXRlcm1pbmUgdGhlIHRocm91Z2hwdXQgYXQgdGhlIGRpZmZlcmVudCBmcmVxdWVuY2llcyB0bwpz
ZWUgaWYgMzAwTUh6IGNhbiBzdXBwb3J0IDRLNjAgZGVjb2RlPwoKPgo+IFJlZ2FyZHMsCj4gTHVj
YXMKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
