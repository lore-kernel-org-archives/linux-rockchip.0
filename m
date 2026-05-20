Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3362CCD4F3D
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 17:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4635L7U5AR/sYI4hNdQtmC+IzijxWwg6HxMRb/cPQo=; b=GuPS5AGeWvMxQd
	QfWWMRH1QVvmS/EM+68CrVKUc1zANIiSJ2BzsKn40VEDopW/3uX/+ihWEG3beZPnlqbQh6OYYQonx
	rBkUN7/hUOekRIBeIoImzsTbR7B1L2cDgNxQuQ9ey/DgaoNj9CdwuvZ9fL/Um/oRUapCDmsyQgOvu
	BdjqWXUHDPji9CH/tgdD27zv/L2VtH9iUnGpQwvxx1Ea5xb/xjYOg6b7B/PnNbfPGc7SnvuINQ1Zp
	W5pVLG0IQqjnOmKBd7/jwCYTUOWCjWeeJ8M2cgibRuTTV6U6WOdBNvxgcGYjG8Kd0y5ouALPbEvrn
	usgbZ8Bwd06i7o9wvZJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPkYf-00000005HcT-2VXH;
	Wed, 20 May 2026 17:18:13 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPkYd-00000005Hbr-0p67
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 17:18:12 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1779297488; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=csS68DZzvSHu5gw7WMKqVFQxaoX1AuHVDHCGdxum/O74zC3ZfyqzU8+ceCIWbSZAT9ArebEWTTrxxiVExYurVpF7f02nuwFAdlosqErCniML1bwLFLioBHtVN6tMBdAUdc4z3fc/nj7BXkNUh8Sd/htODgX8u98S6MU3Y3s/JKI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1779297488; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NeBwgyjZK25hQAT87Hew+crfp0Rqyjwr0cIr0wqwf44=; 
	b=PWlGSxANwL5uhStuHeoVZT2HYxWUeHNGQ0sRl7LFANDsx2VTvdobddyYKyzp91wT13aPstBr1DdwO6ryGXQcrViyLboU8N37PP34EKW/4nhZTHZnM80V8XrXk85vuvUxR8w2iPPvECNqP0s5y8npJBGZ+EZE6Je47bvCy8It6so=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779297488;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=NeBwgyjZK25hQAT87Hew+crfp0Rqyjwr0cIr0wqwf44=;
	b=KU5B8iiWjz18uha7sJPTtOHXqTABo34Ham0Cf7HwJ83WtcSOu/E6xZaWyXprIKPR
	r+Bpke6scgdHD7DQAWs6xamTSKgEjEjRNlROwPMI0tvEpUp4NkvJDkDJpixO2ptBTBy
	BqOdA/8Z6DSCzVE1y+5uk8kMJw4Hw7jbzRWOBLr4=
Received: by mx.zohomail.com with SMTPS id 1779297486565731.5417719790839;
	Wed, 20 May 2026 10:18:06 -0700 (PDT)
Message-ID: <e3b93bda-fed8-4f21-b3d8-cdf28bfaba1c@collabora.com>
Date: Wed, 20 May 2026 13:18:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal de-blocking
 edges y=4 and y=12
To: Simon Wright <simon@symple.nz>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
References: <52a01f1f-5b36-429b-96cf-f1a0a1c8f5e4@symple.nz>
 <5797ac61-dc61-4182-ac60-cc377564ff90@collabora.com>
 <2565c949-a558-415f-8c79-e47812db8341@symple.nz>
Content-Language: en-US
From: Detlev Casanova <detlev.casanova@collabora.com>
In-Reply-To: <2565c949-a558-415f-8c79-e47812db8341@symple.nz>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_101811_295105_E8ED38DF 
X-CRM114-Status: GOOD (  23.80  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2ltb24sCgpPbiA1LzIwLzI2IDAyOjQ1LCBTaW1vbiBXcmlnaHQgd3JvdGU6Cj4gSGkgRGV0
bGV2LAo+Cj4+IFdlIGRvIG5vdCBoYXZlIGRvY3VtZW50YXRpb24gZm9yIHRoaXMgZGVjb2Rlciwg
YnV0IGNvdWxkIHlvdSBjaGVjawo+PiB5b3VyIGRlY29kZXIgdmVyc2lvbiA/IEl0IGlzIHN0b3Jl
IGluIHJlZ2lzdGVyIDAgYW5kIEkgZ2V0IDB4MzgzMjE3NDYuCj4gcmVhZGwoMHgyN2IwMDEwMCkg
cmVhZHMgMHgzODMyMTc0NiBvbiBib3RoIG15IFJLMzU3NiBib2FyZHM6Cj4KPiAgICBOYW5vUGkg
Ujc2UyAoRnJpZW5kbHlFbGVjKTogIDB4MzgzMjE3NDYKPiAgICBBcm1Tb00gU2lnZTU6ICAgICAg
ICAgICAgICAgIDB4MzgzMjE3NDYKPiAgICBSYWR4YSBSb2NrIDREICh5b3Vycyk6ICAgICAgIDB4
MzgzMjE3NDYKPgo+IFNhbWUgc2lsaWNvbiByZXZpc2lvbiBhY3Jvc3MgdGhyZWUgZGlmZmVyZW50
IHZlbmRvcnMnIGJvYXJkcy4KR29vZCwgdGhhdCdzIG9uZSB0aGluZyBsZXNzIHRvIHdvcnJ5IGFi
b3V0Lgo+PiBXaGF0IEkgZG9uJ3QgaGF2ZSBpcyBhIHRlc3Qgc2hvd2luZyB0aGF0IHRoZSBoYXJk
d2FyZSBiZWhhdmVzCj4+IHByb3Blcmx5IHdpdGggdGhlIHZlbmRvciBkcml2ZXIuCj4+IElzIHRo
YXQgc29tZXRoaW5nIHlvdSBjb3VsZCB0cnkgb24gdGhlIE5hbm9QaSA/Cj4gRG9uZS4gIFRoZSBS
NzZTIGhhcyB0aGUgRnJpZW5kbHlFbGVjIEJTUCBvbiBlTU1DLCBzbyBJIGJvb3RlZCBmcm9tCj4g
ZU1NQyAoa2VybmVsIDYuMS4xNDEsIE1QUCBjMWYxYzEyZCAyMDI1LTA5LTMwKSBhbmQgcmFuCj4g
bXBpX2RlY190ZXN0IG9uIGxvbmcuaDI2NCAoMTkyMHgxMDgwIEguMjY0LCBvcGVuaDI2NGVuYyBT
TVBURSBiYXJzKS4KPiBUaGVuIHJlYm9vdGVkIHRoZSBzYW1lIGJvYXJkIGZyb20gU0QgaW50byBB
cm1iaWFuIDcuMC4xLWVkZ2Utcm9ja2NoaXA2NAo+IGFuZCByYW4gdGhlIHNhbWUgZmlsZSB0aHJv
dWdoIHY0bDJzbGgyNjRkZWMuCj4KPiAoQXJtYmlhbidzIGJ1aWxkIG9mIExpbnV4IDcuMC54IGNh
cnJpZXMgb25lIHVucmVsYXRlZCBya3ZkZWMuYyBwYXRjaAo+IHRoYXQgcmVtb3ZlcyBhIHZiMl9p
c19idXN5IGNoZWNrIGluIHJrdmRlY19zX2N0cmw7IHJrdmRlYy12ZHB1MzgzLWgyNjQuYwo+IGlz
IGJ5dGUtaWRlbnRpY2FsIHRvIHRvcnZhbGRzL2xpbnV4IG1hc3Rlci4pCj4KPiAxMCBmcmFtZXMg
b2YgTlYxMiB2cyBhbiBhdmRlY19oMjY0IFNXIHJlZmVyZW5jZToKPgo+ICAgIEJvYXJkICAgICAg
ICAgS2VybmVsICsgZHJpdmVyICAgICAgICAgICAgICAgRnJhbWUgMCBkaWZmCj4gICAgUjc2UyAg
ICAgICAgICA2LjEuMTQxIHZlbmRvciBNUFAgICAgICAgICAgICAwIC8gMywxMTAsNDAwIChNQVRD
SCkKPiAgICBSNzZTICAgICAgICAgIDcuMC4xICAgcmt2ZGVjLXZkcHUzODMtaDI2NCAgIDczMiww
OTQgKDIzLjU0JSkKPiAgICBTaWdlNSAgICAgICAgIDcuMC42ICAgcmt2ZGVjLXZkcHUzODMtaDI2
NCAgIDYzOSw3MjEgKDIwLjU3JSkKPgo+IFNhbWUgY2hpcCwgc2FtZSBOYW5vUGkgYm9hcmQsIHNh
bWUgaW5wdXQsIHNhbWUgU1cgcmVmZXJlbmNlLiAgVmVuZG9yCj4gTVBQIHByb2R1Y2VzIGJpdC1l
eGFjdCBjb3JyZWN0IG91dHB1dCBvbiBhbGwgMTAgZnJhbWVzICgwIGRpZmZlcmVuY2VzCj4gb24g
ZXZlcnkgUC1mcmFtZSB0b28pOyB0aGUgdXBzdHJlYW0gZHJpdmVyIGNvcnJ1cHRzIGV2ZXJ5IGZy
YW1lLiAgVGhlCj4gU2lnZTUgbGluZSBpcyBhIGRpZmZlcmVudCB2ZW5kb3IncyBQQ0Igb24gYSBz
bGlnaHRseSBuZXdlciBBcm1iaWFuCj4gcG9pbnQgcmVsZWFzZSBydW5uaW5nIHRoZSBzYW1lIHVw
c3RyZWFtIGRyaXZlciwgaW5jbHVkZWQgdG8gcnVsZSBvdXQKPiBhIE5hbm9QaSBib2FyZC1zcGVj
aWZpYyBpc3N1ZS4KSSBhbHNvIGhhdmUgYW4gQXJtc29tIFNpZ2U1LCBvbiB3aGljaCBJIGNhbid0
IHJlcHJvZHVjZSB0aGlzIGVpdGhlci4KQnV0IGl0IGlzIGEgZ29vZCB0aGluZyB0aGF0IHRoZSB2
ZW5kb3IgZHJpdmVyIGlzIG5vdCBhZmZlY3RlZCwgaXQgYWxzbyAKcnVsZXMgb3V0IGhhcmR3YXJl
IGlzc3Vlcy4KPj4gVGhlIG90aGVyIHJlcG9ydCBhbHNvIG1lbnRpb25lZCB0aGF0IHRoZSBpc3N1
ZSB3YXMgaGFwcGVuaW5nIDEwJQo+PiBvZiB0aGUgdGltZSwgYnV0IHlvdSBzZWVtIHRvIHNlZSBp
dCBldmVyeSB0aW1lLCBjb3VsZCBiZSBub3RoaW5nCj4+IHRob3VnaC4KPiAxMDAlIGhlcmUuICBF
dmVyeSBmcmFtZSwgZXZlcnkgdGVzdCBzdHJlYW0sIG11bHRpcGxlIGlucHV0IHNvdXJjZXMKPiAo
b3BlbmgyNjRlbmMsIHgyNjQsIE5WRU5DLCBRU1YpLCB0d28gaW5kZXBlbmRlbnQgVjRMMiB1c2Vy
c3BhY2UKPiBpbXBsZW1lbnRhdGlvbnMgKEdTdHJlYW1lciAxLjI4LjIgdjRsMnNsaDI2NGRlYyBh
bmQgYSBoYW5kLXdyaXR0ZW4KPiBSdXN0IHN1Ym1pdHRlcikuICBSb3dzIDQgYW5kIDEyIG1vZCAx
NiBhcmUgZnVsbHkgY29ycnVwdGVkIGV2ZXJ5Cj4gcnVuLiAgVGhlIGV4YWN0IHBlcmNlbnRhZ2Ug
ZHJpZnRzICgyMC4zJSBpbiB0aGUgb3JpZ2luYWwgcmVwb3J0LAo+IDIwLjU3JSBvbiBTaWdlNSB0
b2RheSwgMjMuNTQlIG9uIFI3NlMgdG9kYXkpIGJlY2F1c2UgZnJlc2hseS0KPiBnZW5lcmF0ZWQg
c3RyZWFtcyBoYXZlIGRpZmZlcmVudCBpbnRyYS1wcmVkaWN0aW9uIG1vZGVzLCBidXQgdGhlCj4g
cm93cy00LzEyLW1vZC0xNiBwYXR0ZXJuIGlzIGludmFyaWFudC4KPgo+IEkgY2FuIGhvc3QgdGhl
IGxvbmcuaDI2NCArIHN3X3JlZi5udjEyICsgaHdfYnNwLm52MTIgKwo+IGh3X21haW5saW5lLm52
MTIgYnVuZGxlICh+MTE1IE1CKSBvbiBhIHB1YmxpYyBVUkwgaWYgaXQgd291bGQKPiBoZWxwIHlv
dXIgcmVwcm9kdWN0aW9uLiAgQWxzbyBoYXBweSB0byBkdW1wIG1vcmUgcmVnaXN0ZXJzLAo+IGlu
c3RydW1lbnQgdGhlIGRyaXZlciwgb3IgdGVzdCBwYXRjaGVzIHlvdSdkIGxpa2UgbWUgdG8gdHJ5
LgpJdCBjb3VsZCBoZWxwIHRvIHVzZSB0aGUgc2FtZSBpbnB1dCBmaWxlIGFzIHlvdSAobWF5YmUg
ZGlmZmVyZW50IHZlcnNpb24gCm9mIGVuY29kZXJzIGdlbmVyYXRlIGRpZmZlcmVudCBmaWxlcyku
CkJ1dCB0aGUgb3V0cHV0IGZpbGVzIHdvbid0IGJlIG5lZWRlZC4KCkFub3RoZXIgdGhpbmcgdGhh
dCBjb3VsZCBiZSBoZWxwZnVsIGlzIGluZm9ybWF0aW9uIGFib3V0IEJMMzEuCldoaWNoIHZlcnNp
b24gYXJlIHlvdSB1c2luZyA/CkNhbiB5b3Ugc2hhcmUgdGhlIGJvb3Rsb2FkZXIgYmluYXJ5IHlv
dSB1c2Ugb24gdGhlIFNpZ2U1ID8KSXMgdGhlIHZlbmRvciBpbWFnZSBib290ZWQgd2l0aCB0aGUg
c2FtZSBib290bG9hZGVyIGFzIHRoZSB1cHN0cmVhbSBvbmUgPwoKIEZyb20gdGhlIHNlcmlhbCwg
b24gbXkgc2lnZTUsIEkgZ2V0OgoKSU5GTzrCoCDCoCBQcmVsb2FkZXIgc2VyaWFsOiAwCk5PVElD
RTrCoCBCTDMxOiB2Mi4zKCk6djIuMy04NTktZ2M0ODFlNTM2ODpkZXJyaWNrLmh1YW5nLCBmd3Zl
cjogdjEuMTQKTk9USUNFOsKgIEJMMzE6IEJ1aWx0IDogMDk6Mzc6MjgsIE5vdsKgIDggMjAyNApJ
TkZPOsKgIMKgIGV4dCAzMmsgaXMgZGV0ZWN0ZWQKSU5GTzrCoCDCoCBTT0MgKDB4MzU3NjAxMDEp
CklORk86wqAgwqAgc3BlYzogMHgxCklORk86wqAgwqAgc29jIGNvbGQgYm9vdApJTkZPOsKgIMKg
IEFSTSBHSUN2MiBkcml2ZXIgaW5pdGlhbGl6ZWQKSU5GTzrCoCDCoCBieXBhc3MgbWVtb3J5IHJl
cGFpcgoKUmVnYXJkcywKRGV0bGV2LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
