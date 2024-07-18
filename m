Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DFD9C3DA63
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 13:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8Lxe+Jraw52h58AhEpMWYx5suDdj8Ok0CeBv/6IeQs=; b=VeHoSjFokBw0Zq
	aUGfCrqnIpkU0Dz8dlPEKbR4a157AMhczXfAcCb/a36AnVjmO0xLKBJXY55ISMPwiK7SU4QR/jo1y
	WmOqNYzYGBJuG7hmopVjbRUJUZ9+9pfBU2ALQNpvu6SNco+E0+b4eTLGb9BYJv5BI2AmVt1xhduNx
	Cp2RFZ7KAJKuoBZwxC276JUIG/h6ebHBdtGcPKvvv0lmm7P8yMr77/2tEhS0wLOhab4c94Qip/nc+
	vvjD3FUD9mbLSNUP5Gvwn4tsRSx+eHKGo4DzOziv2+mdgV3mZnNwXO04H9rxe2agtMnjBYSHYiC9J
	DLB2ns++TBCiuapJAPkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sURcJ-0000000HCbW-0XZo;
	Thu, 18 Jul 2024 13:56:19 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sURcG-0000000HCaU-19Cm
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jul 2024 13:56:18 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-447e02f3ac9so1613401cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Jul 2024 06:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1721310974; x=1721915774; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/9PgN2CWlwkAlyMyd9I5yTG/RODQPuF8I+fsHHELrjs=;
        b=hEd9EEElsbrPHCNab7lO9ASIXbeFXEpiK8m7aErxbO9KnsRZn3WghRpp+ASYrZf/MD
         gj0VQ1jFFyFW4D4eYQAkFV9yblCF/1dTVGDlFd3EDYTDIFtawD6ovcnSvn5gDMhHLqU7
         fQY4HDuXkMTtk0SV3wZjqM2kyk5D86eirggn9XEM0ZueaMNiiPAIcA6Ia0htOA072O8O
         4mHAfXSUNOqfh2jVtC8RctDoTt5gzeojPFvqgrBnc5azDu9Hw0Wm9bzZejKYm4QB+8mb
         3Z/GI1M8m7kQ/3jbaTz+unrNwSrGvo1zOa4eSkbE2+L4nRIS0d3bA/woTaJPTiLdbIlX
         pfHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721310974; x=1721915774;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/9PgN2CWlwkAlyMyd9I5yTG/RODQPuF8I+fsHHELrjs=;
        b=F7hL97OYyoMd9RfMghZwiec3ogfpuU16Qd31kiv2hjspLT/yihN1/mf87tE65776N3
         YSxbJ9hGABj+2b9e9a1djO+IVChicqwpuNzRvpAmEN/k1odj7HHvC2W2rcIqhaxN7OPx
         6OGHBs9FnJD9z7DL9PCecikhiRIYn734nn2pR3wbxG8bnF0mSjQOXiAxlHIJlbevU77t
         ddbhfZzIM5YVyxNcBYe6hkShgcCufdP5vR9rqPgG+Ueq4UWJHhiXkIaWB7WYSWifa6OX
         Z0tRPc1gVMN6eYXeHDLxFPdGaPuyVOBWTbzmqt+Js38irXzlFpOdLe7dCJRWcNqSzieY
         yADg==
X-Forwarded-Encrypted: i=1; AJvYcCVjF7LhOOmCb5OEAgnZr4dbOwiPPa9ywpeGzj2dofLzSZ47XNARrIWcwcsCt4+B13a4SR9oxEgj9wu9IhCfv3W5vCRXlZvmpodO+oK4xqfA5vqq
X-Gm-Message-State: AOJu0YxDxPTMdEwKg3HfE6o//ifsYnWUcA3gZiBCEhQxjXuaQWuRX7TW
	IZqWRcu4f2WD9EAu4KwvdPjj3PnQi0TmaSnD/+eSFS7sxvieSs+dGsAQeza2ugA=
X-Google-Smtp-Source: AGHT+IH5MTKib9696k0vgo2HoX8hTJTXldqZABkNwBgCpERpaxYd5V6iPU264qEzfgN6WERm7Mn/6g==
X-Received: by 2002:ac8:7d95:0:b0:447:ede4:c6fe with SMTP id d75a77b69052e-44f9696658emr11297251cf.9.1721310974303;
        Thu, 18 Jul 2024 06:56:14 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:6720::7a9])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-44f96acd157sm2521331cf.95.2024.07.18.06.56.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 06:56:13 -0700 (PDT)
Message-ID: <7113029e2e192d43523a1ea5dae041fb53ae5948.camel@ndufresne.ca>
Subject: Re: [PATCH v4 1/2] media: videodev2: Add flags to unconditionnaly
 enumerate pixels formats
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Jacopo Mondi
	 <jacopo.mondi@ideasonboard.com>
Cc: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar,
 hverkuil-cisco@xs4all.nl,  linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Date: Thu, 18 Jul 2024 09:56:12 -0400
In-Reply-To: <1faa7098-b108-480e-ae4b-ed25e0020e51@collabora.com>
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
	 <20240717131430.159727-2-benjamin.gaignard@collabora.com>
	 <2kbxr3hkjbcnaqescxmlcerziixg72icqpug6wa25eeggy2pnj@vqmxe4ojcwml>
	 <dfc292f8-0014-4bf4-9429-31f729a176cd@collabora.com>
	 <ok2a4ubzka6rhzyj2c5op73ij7pw35g6e75whc2jjget62fatx@zka2ewyt3kfv>
	 <c8358d79bd51a9bfa5116b33ae5e7766b95d344d.camel@ndufresne.ca>
	 <1faa7098-b108-480e-ae4b-ed25e0020e51@collabora.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_065616_602807_E8F99F52 
X-CRM114-Status: GOOD (  29.89  )
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

SGksCgpMZSBqZXVkaSAxOCBqdWlsbGV0IDIwMjQgw6AgMDk6MDQgKzAyMDAsIEJlbmphbWluIEdh
aWduYXJkIGEgw6ljcml0wqA6Cj4gTGUgMTcvMDcvMjAyNCDDoCAxOTo1MCwgTmljb2xhcyBEdWZy
ZXNuZSBhIMOpY3JpdMKgOgo+ID4gCgpbLi4uXQoKPiA+ID4gPiA+ID4gQEAgLTE1NjksNiArMTU2
OSw3IEBAIHN0YXRpYyBpbnQgdjRsX2VudW1fZm10KGNvbnN0IHN0cnVjdCB2NGwyX2lvY3RsX29w
cyAqb3BzLAo+ID4gPiA+ID4gPiAgICAJaW50IHJldCA9IGNoZWNrX2ZtdChmaWxlLCBwLT50eXBl
KTsKPiA+ID4gPiA+ID4gICAgCXUzMiBtYnVzX2NvZGU7Cj4gPiA+ID4gPiA+ICAgIAl1MzIgY2Fw
X21hc2s7Cj4gPiA+ID4gPiA+ICsJdTMyIGZsYWdzOwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
ICAgCWlmIChyZXQpCj4gPiA+ID4gPiA+ICAgIAkJcmV0dXJuIHJldDsKPiA+ID4gPiA+ID4gQEAg
LTE1NzgsOCArMTU3OSwxMCBAQCBzdGF0aWMgaW50IHY0bF9lbnVtX2ZtdChjb25zdCBzdHJ1Y3Qg
djRsMl9pb2N0bF9vcHMgKm9wcywKPiA+ID4gPiA+ID4gICAgCQlwLT5tYnVzX2NvZGUgPSAwOwo+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gICAgCW1idXNfY29kZSA9IHAtPm1idXNfY29kZTsKPiA+
ID4gPiA+ID4gKwlmbGFncyA9IHAtPmZsYWdzICYgVjRMMl9GTVRfRkxBR19FTlVNX0FMTF9GT1JN
QVRTOwo+ID4gPiA+ID4gPiAgICAJbWVtc2V0X2FmdGVyKHAsIDAsIHR5cGUpOwo+ID4gPiA+ID4g
PiAgICAJcC0+bWJ1c19jb2RlID0gbWJ1c19jb2RlOwo+ID4gPiA+ID4gPiArCXAtPmZsYWdzID0g
ZmxhZ3M7Cj4gPiA+ID4gPiBXb24ndCB0aGlzIHNldCBWNEwyX0ZNVF9GTEFHX0VOVU1fQUxMX0ZP
Uk1BVFMgKGlmIHByZXNlbnQpIGluIHRoZQo+ID4gPiA+ID4gZmxhZ3MgcmV0dXJuZWQgdG8gdXNl
cnNwYWNlID8gU2hvdWxkbid0IGJlIGRyaXZlcnMgdG8gc2V0Cj4gPiA+ID4gPiBWNEwyX0ZNVF9G
TEFHX0FMTF9GT1JNQVRTIGluc3RlYWQgPwo+ID4gPiA+IG1lbXNldF9hZnRlciB6ZXJvZWQgZmxh
Z3MgZmllbGQgc28gd2UgbmVlZCB0aGlzIHRvIHNlbmQgVjRMMl9GTVRfRkxBR19FTlVNX0FMTF9G
T1JNQVRTCj4gPiA+ID4gZmxhZyB0byBkcml2ZXJzLiBSZXR1cm4gaXQgdG8gdXNlcnNwYWNlIGlz
IGEgc2lkZSBlZmZlY3QgYnV0IEkgZG9uJ3QgdGhhdCBpcyBwcm9ibGVtCj4gPiA+ID4gc2luY2Ug
aXQgc2V0IGl0IGFueXdheS4KPiA+ID4gPiAKPiA+ID4gT2ssIGlmIHRoZSBleHBlY3RhdGlvbiBp
cyB0aGF0IHRoZSBmbGFnIGlzIHByZXNlcnZlZCB0aHJvdWdoIHRoZSBpb2N0bAo+ID4gPiBjYWxs
LCB0aGlzIGlzIGZpbmUgd2l0aCBtZQo+ID4gSSBtaWdodCBiZSBtaXNzaW5nIHNvbWV0aGluZyBv
dGhlciBzaW1pbGFyIGZlYXR1cmVzIGFyZSBleHBsaWNpdGx5IGFkdmVydGlzZWQgYnkKPiA+IGRy
aXZlcnMuIFRoaXMgd2F5LCB0aGUgZ2VuZXJpYyBsYXllciBjYW4ga2VlcCBvciBjbGVhciB0aGUg
ZmxhZyBiYXNlZCBvZiBpZiBpdHMKPiA+IHN1cHBvcnRlZC4gVGhlIGZhY3QgdGhlIGZsYWcgcGVy
c2lzdCB0aGUgaW9jdGwoKSBvciBub3QgZW5kdXAgaGF2aW5nIGEgdXNlZnVsCj4gPiBzZW1hbnRp
Yy4KPiA+IAo+ID4gQ291bGQgd2UgZG8gdGhlIHNhbWU/Cj4gCj4gSXQgaXMgdGhlIG9ubHkgZmxh
ZyBzZXQgYnkgdXNlcnNwYWNlIHdoZW4gY2FsbGluZyB0aGUgaW9jdGwoKSwgYWxsIG90aGVycwo+
IGFyZSBzZXQgYnkgdGhlIGRyaXZlcnMuCj4gSSBjYW4gY2xlYW4gaXQgZnJvbSB0aGUgaW9jdGwo
KSBzdHJ1Y3R1cmUgYWZ0ZXIgZHJpdmVyIGNhbGwgYnV0IHRoYXQgd29uJ3QgY2hhbmdlIGFueXRo
aW5nLgoKVGhpcyBkb2VzIG5vdCBhbnN3ZXIgbXkgcXVlc3Rpb24uIEluIG90aGVyIHNpbWlsYXIg
ZmVhdHVyZSwgd2UgaGF2ZSBhbgoqKmludGVybmFsKiogZmxhZyBzZXQgYnkgZHJpdmVycyB0byB0
ZWxsIHRoZSBmcmFtZXdvcmsgdGhhdCBzdWNoIGZlYXR1cmUgaXMKYWJsZWQuIFVzaW5nIHRoYXQs
IHRoZSBmcmFtZXdvcmsgY2FuIGtlZXAgb3IgcmVtb3ZlIHRoYXQgZmxhZyBiYXNlZCBvbiBpZiBp
dHMKc3VwcG9ydGVkIG9yIG5vdC4gVGhpcyB3YXksIHVzZXJzcGFjZSBoYXZlIGEgY2x1ZSBpZiB0
aGUgZHJpdmVyIGRvIGhhdmUgdGhpcwpzdXBwb3J0IG9yIGlmIHRoZSByZXR1cm5lZCByZXN1bHQg
KGluIHRoYXQgY2FzZSkgaXMganVzdCBhIHN1YnNldCBtYXRjaGluZyB0aGUKY29uZmlndXJhdGlv
bi4gV2UgZG9uJ3Qgc2VlbSB0byBoYXZlIGRvbmUgdGhlIHNhbWUgbGV2ZWwgb2YgZWZmb3J0IGhl
cmUuCgpOaWNvbGFzCgo+IAo+ID4gCj4gPiA+IFJldmlld2VkLWJ5OiBKYWNvcG8gTW9uZGkgPGph
Y29wby5tb25kaUBpZGVhc29uYm9hcmQuY29tPgo+ID4gPiAKPiA+ID4gPiA+ID4gICAgCXN3aXRj
aCAocC0+dHlwZSkgewo+ID4gPiA+ID4gPiAgICAJY2FzZSBWNEwyX0JVRl9UWVBFX1ZJREVPX0NB
UFRVUkU6Cj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9k
ZXYyLmggYi9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmgKPiA+ID4gPiA+ID4gaW5kZXgg
ZmU2YjY3ZTgzNzUxLi5iNmE1ZGE3OWJhMjEgMTAwNjQ0Cj4gPiA+ID4gPiA+IC0tLSBhL2luY2x1
ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaAo+ID4gPiA+ID4gPiArKysgYi9pbmNsdWRlL3VhcGkv
bGludXgvdmlkZW9kZXYyLmgKPiA+ID4gPiA+ID4gQEAgLTg4Niw2ICs4ODYsOCBAQCBzdHJ1Y3Qg
djRsMl9mbXRkZXNjIHsKPiA+ID4gPiA+ID4gICAgI2RlZmluZSBWNEwyX0ZNVF9GTEFHX0NTQ19I
U1ZfRU5DCQlWNEwyX0ZNVF9GTEFHX0NTQ19ZQ0JDUl9FTkMKPiA+ID4gPiA+ID4gICAgI2RlZmlu
ZSBWNEwyX0ZNVF9GTEFHX0NTQ19RVUFOVElaQVRJT04JCTB4MDEwMAo+ID4gPiA+ID4gPiAgICAj
ZGVmaW5lIFY0TDJfRk1UX0ZMQUdfTUVUQV9MSU5FX0JBU0VECQkweDAyMDAKPiA+ID4gPiA+ID4g
KyNkZWZpbmUgVjRMMl9GTVRfRkxBR19FTlVNX0FMTF9GT1JNQVRTCQkweDA0MDAKPiA+ID4gPiA+
ID4gKyNkZWZpbmUgVjRMMl9GTVRfRkxBR19BTExfRk9STUFUUwkJMHgwODAwCj4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiAgICAJLyogRnJhbWUgU2l6ZSBhbmQgZnJhbWUgcmF0ZSBlbnVtZXJhdGlv
biAqLwo+ID4gPiA+ID4gPiAgICAvKgo+ID4gPiA+ID4gPiAtLQo+ID4gPiA+ID4gPiAyLjQzLjAK
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gPiA+IEtlcm5lbCBtYWlsaW5nIGxpc3Qg
LS0ga2VybmVsQG1haWxtYW4uY29sbGFib3JhLmNvbQo+ID4gPiA+ID4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBrZXJuZWwtbGVhdmVAbWFpbG1hbi5jb2xsYWJvcmEuY29tCj4gPiA+
ID4gPiBUaGlzIGxpc3QgaXMgbWFuYWdlZCBieSBodHRwczovL21haWxtYW4uY29sbGFib3JhLmNv
bQo+ID4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBLZXJuZWwgbWFpbGluZyBsaXN0IC0tIGtlcm5lbEBtYWlsbWFuLmNvbGxhYm9yYS5jb20KPiBU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGtlcm5lbC1sZWF2ZUBtYWlsbWFuLmNvbGxh
Ym9yYS5jb20KPiBUaGlzIGxpc3QgaXMgbWFuYWdlZCBieSBodHRwczovL21haWxtYW4uY29sbGFi
b3JhLmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
