Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83F64CAC5AE
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Sep 2025 14:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WLHQqePXdeb6WDAJEgsDhGFi296xpbo7a0ZXHUyxao=; b=YpcAC3j/6yVcqI
	kmAp1JmKN9vK45WSfL5376D8eDxk3E6uFi918+LAdFyNE1g/QZ8bacdYzPRcrweje2Ya4SJRm8CbW
	5RpbK12eEM6dD7UhKoXULPUbN5PjFPw3bvjkcoGATzoHwMI1H3aD6/WlwhzfxVIopx3Sm9UBApegB
	0nhYmbzUDMcP2tVRnkUtJ1WlHlAliSvHqzpCyJBD5Mi7LeLY+PmNAJw9LN5wJvMp/01kEp1Dh/zf8
	Q5vwlkSXyjMylweO6H3G4g9rthuJnmaqxdXMTJJ+6cfAukywA8fHE34lKBhYw+eomCphSmMabP/nC
	IAgkzkAFzgYDss1a9ilw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v29RY-00000001zaL-3vai;
	Fri, 26 Sep 2025 14:29:04 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v29RW-00000001zYj-0PN9;
	Fri, 26 Sep 2025 14:29:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1758896933; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LiL02BSGQZ5ytPMrAU7fzsgyGu004PQCrF+o3pkV49Gn0Naaaagx2MrWv8h17/ieZ++pzWEfHBvf/QnC+C2tT3Lqwdy8XJEmdpTIgk/xQZMvzFmAmuTDyr0ujrlEnijRtUQTEuHzXmHxHlbtwTYEewNRPkXAGCziAJ77cqhCoMg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1758896933; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=26YfjhR80XqVvp3T4GXiOY1ZVSaa9CIx9x33j2hmPnU=; 
	b=Arha/5GW8rJzpUz+TOpn+9ORBNoQxtxhJFG8vE5Gqzi3c40hk6jfC6gyiNNq922ZO7waYSY3++nyDIH4eFUp1ICjzqU4xjhQeXgx/VvyonGqoY5DWiWfot+uZ0UtAettFA1wFwjCC2KXKfIJMuqRQm2U6USOWeFUfomqE5kZPCc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sjoerd@collabora.com;
	dmarc=pass header.from=<sjoerd@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1758896933;
	s=zohomail; d=collabora.com; i=sjoerd@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=26YfjhR80XqVvp3T4GXiOY1ZVSaa9CIx9x33j2hmPnU=;
	b=FuugvlCaYubKjIun3Ml+KCPMgmQsDCkyyh/gcIASO2PnatTX1la4+bNybAn2e/MG
	Ol4fJBOMpEHcovpSXMfBvJvsmeTLv927ykfl4RNovCHrf/OZrR/I9UlFcgzWpdu651M
	KNKe2Utdu20BgSVudn6qATfOCn47yxZYm3wY6A9A=
Received: by mx.zohomail.com with SMTPS id 1758896931799989.2968902254092;
	Fri, 26 Sep 2025 07:28:51 -0700 (PDT)
Message-ID: <638b9565b90714f56caa9535b7b9b96cd86100d6.camel@collabora.com>
Subject: Re: Support for Rock PI-4b
From: Sjoerd Simons <sjoerd@collabora.com>
To: Mostafa Saleh <smostafa@google.com>, devicetree@vger.kernel.org, 
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip@lists.infradead.org, open list <linux-kernel@vger.kernel.org>
Cc: Rob Herring <robh@kernel.org>, krzk+dt@kernel.org, conor+dt@kernel.org, 
 Heiko Stuebner
	 <heiko@sntech.de>
Date: Fri, 26 Sep 2025 16:28:48 +0200
In-Reply-To: <CAFgf54oYjUEg9KkQUzneYTZH1Z8cX56va5M0853eWPFaYT+Z2A@mail.gmail.com>
References: <CAFgf54oYjUEg9KkQUzneYTZH1Z8cX56va5M0853eWPFaYT+Z2A@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.56.2-3 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_072902_373888_EED2D381 
X-CRM114-Status: GOOD (  16.42  )
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

T24gRnJpLCAyMDI1LTA5LTI2IGF0IDE1OjA3ICswMTAwLCBNb3N0YWZhIFNhbGVoIHdyb3RlOgo+
IEhpLAo+IAo+IEkgYW0gdHJ5aW5nIHRvIHJ1biBMaW51eFsxXSBvbiBteSBSb2NrIFBJLTRiLCB3
aGljaCBJIHNlZSBpcyBzdXBwb3J0ZWQgaW4KPiB0aGUga2VybmVsIGluIOKAnHJrMzM5OS1yb2Nr
LXBpLTRiLmR0c+KAnS4KPiAKPiBIb3dldmVyLCBjb21waWxpbmcg4oCcZGVmY29uZmln4oCdIChB
Uk02NCkgYW5kIGZsYXNoaW5nIG15IEltYWdlIGRvZXNu4oCZdAo+IHdvcmssCj4gSXQganVzdCBo
YW5ncyBiZWZvcmUgYW55IGNvbnNvbGUgKGV2ZW4gd2l0aCBlYXJseWNvbiksIEkgdHJpZWQgdG8g
YWxzbyB1c2UKPiBzb21lIG9mIHRoZSB2ZW5kb3IgY29uZmlncyB3aXRoIG5vIGx1Y2suCj4gSSBk
aWQgc29tZSByZXNlYXJjaCBhbmQgZm91bmQgdGhhdCBbMl0sIHdoaWNoIGluZGljYXRlcyB0aGF0
IHRoZSB1cHN0cmVhbQo+IHN1cHBvcnQgaGFzIGJlZW4gYnJva2VuIGZvciBzb21lIHllYXJzPwoK
V2UndmUgZ290IHRoZSBSb2NrIDRiIGluIG91ciBhdXRvbWF0ZWQgdGVzdGluZyBsYWIgYXMgcGFy
dCBvZiBrZXJuZWxjaSBhbmQgb3RoZXIKZWZmb3J0cy4gVXBzdHJlYW0gd29ya3MganVzdCBmaW5l
IG9uIHRob3NlIGJvYXJkcywgc28gaXQncyBsaWtlbHkgYW4gaXNzdWUgaW4KeW91ciBzZXR1cC4K
ClNlZSBlLmcgaHR0cHM6Ly9sYXZhLmNvbGxhYm9yYS5kZXYvc2NoZWR1bGVyL2pvYi8xOTk3ODU1
OCNMNTI1IGZvciBhIHJlY2VudAp1cHN0cmVhbSBrZXJuZWwgYm9vdC4KClJlZ2FyZHMsCiAgU2pv
ZXJkCgoKPiAKPiBIYXMgYW55b25lIHRyaWVkIHRvIGZsYXNoIGEgcmVjZW50IGtlcm5lbCBzdWNj
ZXNzZnVsbHkgb24gaXQ/IG9yIGFueQo+IHRpcHMgYXJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQuCj4g
T3RoZXJ3aXNlLCBtYXliZSBpdCBjYW4gYmUgcmVtb3ZlZCB0byBhdm9pZCBtaXNsZWFkaW5nIG90
aGVyIGRldmVsb3BlcnMKPiAoSSBnb3QgdGhpcyBib2FyZCB0byBkbyBzb21lIHVwc3RyZWFtIGtl
cm5lbCBkZXZlbG9wbWVudCBvbikKPiAKPiBbMV0gYmFzZTogNGZmNzFhZjAyMGFlNTlhZTJkODNi
MTc0NjQ2ZmMyYWQ5ZmNkNGRjNAo+IFsyXSBodHRwczovL3dpa2kucmFkeGEuY29tL1JvY2twaTQv
ZGV2L2tlcm5lbC1tYWlubGluZQo+IAo+IFRoYW5rcywKPiBNb3N0YWZhCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
