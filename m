Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6CA3C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Oct 2022 21:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELVbcPGMalY8mcquWVKnm/+PLENy6zYJeYfv3MbY3V4=; b=Tj0EevzjJJ7qJo
	wa+HWSB4qrZ6YyMj4saltj6oqYXtT/D7hKUdohg2DIWrDio/F8Og/Pv/PdUCtihlBBo8r3dhNh2ao
	vKlCO3hKuztzxj7spkE4+CJXZ/nDC3ZZR8Z42qpsdhL5sMUBVl6pYn+BRdbJhD1dHD40RfybhMDnZ
	b2evSCokb6t00J29Xn616v3ckNIzlLGN3L4iF2mJ6zwSmRQrrf/yi/kppIKPrNhuRviRXEViPtU7d
	tkOjV3FprLb1SaMfNgfszLO6/Tm/ag8ER6qQZRdmNIBy3tmiaF9tvzSXL2NfYEUKm78XG4zN23buo
	5xAjuDhXLBanFjvE6Lrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiN8R-005xZ7-LT; Tue, 11 Oct 2022 21:49:59 +0000
Received: from pscan.eu ([31.193.140.172] helo=mail.pscan.uk)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiN8O-005xYY-2n
	for linux-rockchip@lists.infradead.org; Tue, 11 Oct 2022 21:49:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
	s=2016050301; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References
	:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=wCSgmER7TzPv0IK/+az8+dFdS9c06Pa8vdJLXJCDsXc=; b=kxESSmp0mvXec9A3QMNJfZKmMj
	ypmtnXt5lP2+p0dVWng2dcRTXXugyYNFyDyCSsYaxublrviBHxubQeP7ZD8TKmFxDVeENovbeQU3+
	B6FRHZ9N4JyW+NKZY016ii/nV9w+MSOR6m5BhrzrBaLWll4O+8M6xV2esOYhLJkKa0oY=;
Received: from host86-153-126-124.range86-153.btcentralplus.com ([86.153.126.124] helo=[192.168.1.77])
	by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
	(Exim 4.94.2 (FreeBSD))
	(envelope-from <subs@pscan.uk>)
	id 1oiM0A-000EJC-Ud; Tue, 11 Oct 2022 21:37:22 +0100
Message-ID: <9fb765d0-7648-288f-23a7-8d98da9b3561@pscan.uk>
Date: Tue, 11 Oct 2022 22:49:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: More RK817 questions
From: Philip C <subs@pscan.uk>
To: Peter Geis <pgwipeout@gmail.com>, Chris Morgan <macromorgan@hotmail.com>
Cc: Maciej Matuszczyk <maccraft123mc@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <0ec9541a-8d8c-0fc0-d158-73ba949169a3@pscan.uk>
 <SN6PR06MB5342D159E9E83EAA4FEE9CDBA5239@SN6PR06MB5342.namprd06.prod.outlook.com>
 <CAMdYzYq6vbYgG_c1O3_pR1nNRWLK2QUim0rQ4PZiucU=vVK1Ng@mail.gmail.com>
 <4737d50e-5f5b-670c-227e-e3d84e4fb09d@pscan.uk>
In-Reply-To: <4737d50e-5f5b-670c-227e-e3d84e4fb09d@pscan.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_144956_174778_B6AD373E 
X-CRM114-Status: GOOD (  11.18  )
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

SGVsbG8gUGV0ZXIuCgpNeSBkZXZpY2UsIGZyb20gdGhlIHBlcnNwZWN0aXZlIG9mIHVzYiBwaHks
IE9URyBhbmQgcmVndWxhdG9ycyBhcHBlYXJzIAp0byBiZSBpZGVudGljYWwgdG8gdGhpcyBvbmU6
LQoKaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbC9ibG9iL2RldmVsb3At
NC4xOS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1yazgxNy10YWJsZXQtazEw
OC5kdHMKCkkgYWxyZWFkeSBoYXZlIGEgZGVidWcgY29uc29sZSBhbmQgbWFpbmxpbmUgYm9vdGlu
ZyBvbiBpdC4gIFRoZSBzaW5nbGUgClVTQiB0eXBlLUMgcG9ydCBsb29rcyBsaWtlIGl0IG1pZ2h0
IHdvcmsgZXhjZXB0IHRoYXQgd2hlbiBhbiBPVEcgYWRhcHRlciAKaXMgcGx1Z2dlZCBpbiB0aGUg
ZGV2aWNlIGRvZXNuJ3Qgc3VwcGx5IDUuMFYgZnJvbSBib29zdCBhcyBJIHdhbnQgaXQgdG8uCgpM
b29raW5nIGF0IHRoZSBtYWlubGluZSBwaW5lbm90ZSBkdHMgaXQgbG9va3MgZGlmZmVyZW50IGVu
b3VnaCB0aGF0IGl0IApkb2Vzbid0IGhlbHAgbWUgKHdpdGggdGhlIGtub3dsZWRnZSB0aGF0IEkg
aGF2ZSkuICBUaGUgcGluZW5vdGUgaGFzIGEgCndsbHNlbWksd3VzYjM4MDEgY29ubmVjdGVkIHRv
IGkyYzMsIGJ1dCBteSBkZXZpY2UgaGFzIG5vIFVTQiBwb3J0IGNoaXAgCm9uIGFueSBpMmMgYnVz
IHRoYXQgSSBjYW4gc2VlLiAgSW5zdGVhZCBpdCBoYXMgYSB2Y2M1djBfaG9zdF9lbiBwaW4gb24g
CkdQSU8zIFJLX1BBMyB3aGljaCBJIHNvbWV3aGF0IHN1c3BlY3QgaXMgaG93IHRoZSByazgxNyBk
cml2ZXIgaXMgCmJyaW5naW5nIHVwIHRoZSBwb3dlciByYWlsIGZvciB0aGUgT1RHIGFkYXB0ZXIu
CgpUaGUgbGluZSAiZXh0Y29uID0gPCZ1c2IycGh5MD47IiBpcyBhdCBsaW5lIDgzOCBpbiB0aGUg
ZHRzIHRoYXQgSSBsaW5rZWQgCmFib3ZlLiAgVGhpcyBpcyB0aGUgbGluZSBpbiBCU1AgdGhhdCBy
ZWdpc3RlcnMgdGhlIHJrODE3IGRyaXZlciBmb3IgCm5vdGlmaWNhdGlvbnMgZnJvbSB0aGUgdXNi
IHBoeSBkcml2ZXIsIGFuZCB3aGljaCBzZWVtcyB0byBjYXVzZSAKcmVndWxhdG9yICJ2Y2M1djBf
aG9zdCIgdG8gc3RhcnQgZmVlZGluZyBwb3dlciB0byB0aGUgVVNCIHBvcnQgd2hlbiBhbiAKT1RH
IGNhYmxlIGlzIGRldGVjdGVkLgoKSSBhbSBjb21wbGV0ZWx5IHN0dWNrLiAgSWYgeW91IGNhbiBo
YXZlIGEgbG9vayBhbmQgdGVsbCBtZSB3aGF0IHRvIHRyeSAKdGhlbiBJIHdvdWxkIGJlIHZlcnkg
Z3JlYXRmdWwuCgp0aGFua3MsIFBoaWxpcAoKCgoKT24gMTEvMTAvMjAyMiAwOToyMSwgUGhpbGlw
IEMgd3JvdGU6Cj4gd2VsbCBpZiB5b3UgcmVhbGx5IHRoaW5rIHRoYXQgc28gbWFueSBwZW9wbGUg
d2lsbCBiZSBpbnRlcmVzdGVkIGluIG15IAo+IGluY29tcGV0ZW50IHJhbWJsaW5ncyA7LSkKPiAK
PiBJIGp1c3Qgbm90aWNlZCB0aGF0IHRoZXJlIGFyZSBhIHNldCBvZiBwaW5lbm90ZSBkdHMgZmls
ZXMgaW4gbWFpbmxpbmUuIAo+IE15IGJhZCBmb3Igbm90IG5vdGljaW5nIHRoYXQuwqAgSSB3aWxs
IGhhdmUgYSBsb29rIGFuZCBzZWUgd2hhdCBJIGNhbiAKPiBmaWd1cmUgb3V0Lgo+IAo+IHRoYW5r
cywgUEhpbGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
