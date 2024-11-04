Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6945FD1BDD2
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 17:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUkWE/We8Z3rxvGBf4fmU3rLDnAz8gbJ/X5B/0y+UDs=; b=yQdhmozcHXBk30
	O3oBwnfNKdR7cVLADCSw/k7wOzR55pPH+LGxrdj8CuxycuQFQ7V1hgQvR+UTxrD5xABYoy9aSCdD3
	365uhQoB1P18DHG5V3sZkRIqPgNHOFI2cXymicewZSOLSJzQBAWK0KWDO9aFp28R3hQJdjygZ3c2c
	fwbkvQWKVvR7xjrhKgDXAqin+iPgIZfrPVBHpNEJLcqelndu54TLVGI5mNmwi/ru7HfZVAiH2UT48
	ChV2Sst170lxXC33tt0SfjeIswzgDpCIZQlxLEycBY+azdfEmYwxB2ddpySiAEZ9Fst5nKcPnZeqB
	6E1lwNzKL+w4udXQCKZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t80v1-0000000EXQi-3bNm;
	Mon, 04 Nov 2024 17:31:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7ygm-0000000E9ie-33TZ
	for linux-rockchip@bombadil.infradead.org;
	Mon, 04 Nov 2024 15:08:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=fTaUplHrH7M+dnB2sEL6yj29zt9plqFajNCOZAfkhqU=; b=fq/wUdGjxgHcGCU8R9OOFL32g5
	AlLM87QxntFeUOfWRr2qmanm8foM/nw/FfhoUy9PSbLQg/uLmlblFgm6EV18Mpa+69ulLsOKWLzI+
	VfPhlqJ0lzvAQXpCLicBfMO/QHw7J0DxPWVB7LXkcqdhb7MERMam5b+ClxxoS/RvADhAPli+kzTSr
	//N2i4t3EAuQjrtp0HjyUh/sjhWNOl1HQX/Z/jgP4qOQLhCJW4QswPqQC2MnoWOUUsQGmU2uR5OHU
	X7lXHguasmseSOLpF79eXm9sqlmKz5b9pG2kIYI5UxhQet2pLV0qXd0WzVlb86CZQiEy7mL21tqK0
	pNa5+1NA==;
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7ygj-0000000BMju-3UK4
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 15:08:19 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-20cbca51687so40942035ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Nov 2024 07:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730732894; x=1731337694; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fTaUplHrH7M+dnB2sEL6yj29zt9plqFajNCOZAfkhqU=;
        b=WkeCiVPZSV03RRiJYNmc3aE02tpFvE/L0IckCKmyGjOF+xW3uRfyIDExke1WNE9P9U
         pBi+gOty2Rr+ArjskLs76FpAN9JQoPpL8Vl8xBbAQgoZ/a3no01tinwwdqYVNnFFj65S
         iaXW6DgCMvdHj4ykMPpbZeaXbEcvaxJEeMjgDj/3GFGC/qqIJXc1s6SKUV2MVCL5Tvf6
         UPu28g77Qdbm8NpvC7IDIOtsaKPPQWYNJJz9fzaMDTbnGwXNpsscGi7XlYPGvs38vDNs
         jmYjmB5pj+ConCy+UJpKcIj/EfgW6HL5D2+Lv1BLSIoAOMdb2INyXLSPoysDD+wghACE
         DTxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730732894; x=1731337694;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fTaUplHrH7M+dnB2sEL6yj29zt9plqFajNCOZAfkhqU=;
        b=MvCty5W2cJADgz/Okcv8Sn9fEFDT4YYpD+hJDi7dA38e7ljMrlYPxlIQjgMgvilA5i
         ODiq/9JxqIOH2wVH8KQgIaaqSSmXrPMrIZUatm7H/SfPweQN9q+EJv5HedE2TRvj0H2K
         aCGLUYM2hCZ3h3qkT0lgrkmsB3Wd4Mqbpx5+5oY21BNl++j9DXD+B4h/mTsVMMQWqdxF
         32/1oQTXFN4jTvltxOpeSjpBkDuOJR2SrHGMxqXCmznj4BXlsDV2VZ9RZf9TeF5Vm0or
         Pktk9f17Z/dVAOJ6LhLPbGbBtswVl+BQxKlETa//yz/9APVTViyYMcosWhnnS0nc4oOk
         1xWA==
X-Forwarded-Encrypted: i=1; AJvYcCV/DcE63IBPC9KtE+m4rIbkDi+BsL3/qq8kIis3bdxhqhJL9gNV0PXWIwbtgT2J2SB4ctXlOndTIo+Xi1C/bg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwGxDQG4qTPzNBX4SMgrrsMkZ0qZ5Fa1zphpeRebxpmdPn4yeUE
	f9334KGoZ1Hh++ZZST9V/pfA4l8ffE2s2qRyres6F4og3sVoFlqkLItHTevvvA==
X-Google-Smtp-Source: AGHT+IHOenWnujTBSBIpKLJWamkVwB46u9SIX/kMarM+ODiUVeqEfeHc6c4RexMW87XtzdjqQNduWA==
X-Received: by 2002:a17:902:eccd:b0:20b:59be:77b with SMTP id d9443c01a7336-2111aec8329mr165149345ad.6.1730732893820;
        Mon, 04 Nov 2024 07:08:13 -0800 (PST)
Received: from thinkpad ([2409:40f4:3049:1cc7:217b:63a:40ce:2e01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211057a6815sm62677185ad.135.2024.11.04.07.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 07:08:13 -0800 (PST)
Date: Mon, 4 Nov 2024 20:38:05 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
Message-ID: <20241104150805.q7g3bfvbsdx3b6u4@thinkpad>
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKForpLcmkqruuTfD6kkJhp_4CKFABWRxFVYNskGL1tjO=w@mail.gmail.com>
 <3969bae0-eeb8-447a-86a5-dfdac0b136cd@rock-chips.com>
 <CAPDyKFo=GcHG2sGQBrXJ7VWyp59QOmbLCAvHQ3krUympEkid_A@mail.gmail.com>
 <98e0062c-aeb1-4bea-aa2b-4a99115c9da4@rock-chips.com>
 <20241103120223.abkwgej4svas4epr@thinkpad>
 <6f3f2d17-4ca2-44ad-b8df-72986d4b3174@rock-chips.com>
 <CAPDyKFqMuFMf0+2+mPZaGGtBRfavg0LTkhbrCeqh7kHeqq-yZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqMuFMf0+2+mPZaGGtBRfavg0LTkhbrCeqh7kHeqq-yZQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_150817_978449_D43BFDF8 
X-CRM114-Status: GOOD (  44.24  )
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

T24gTW9uLCBOb3YgMDQsIDIwMjQgYXQgMTA6NTE6NDVBTSArMDEwMCwgVWxmIEhhbnNzb24gd3Jv
dGU6Cj4gT24gTW9uLCA0IE5vdiAyMDI0IGF0IDA3OjM4LCBTaGF3biBMaW4gPHNoYXduLmxpbkBy
b2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4gPgo+ID4g5ZyoIDIwMjQvMTEvMyAyMDowMiwgTWFuaXZh
bm5hbiBTYWRoYXNpdmFtIOWGmemBkzoKPiA+ID4gT24gRnJpLCBPY3QgMTgsIDIwMjQgYXQgMDU6
MjA6MDhQTSArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+ID4gPj4gSGkgVWxmLAo+ID4gPj4KPiA+
ID4+IOWcqCAyMDI0LzEwLzE4IDE3OjA3LCBVbGYgSGFuc3NvbiDlhpnpgZM6Cj4gPiA+Pj4gT24g
VGh1LCAxMCBPY3QgMjAyNCBhdCAwMzoyMSwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlw
cy5jb20+IHdyb3RlOgo+ID4gPj4+Pgo+ID4gPj4+PiBIaSBVbGYKPiA+ID4+Pj4KPiA+ID4+Pj4g
5ZyoIDIwMjQvMTAvOSAyMToxNSwgVWxmIEhhbnNzb24g5YaZ6YGTOgo+ID4gPj4+Pj4gWy4uLl0K
PiA+ID4+Pj4+Cj4gPiA+Pj4+Pj4gKwo+ID4gPj4+Pj4+ICtzdGF0aWMgaW50IHVmc19yb2NrY2hp
cF9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gPj4+Pj4+ICt7Cj4gPiA+
Pj4+Pj4gKyAgICAgICBzdHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2X2dldF9kcnZkYXRhKGRldik7
Cj4gPiA+Pj4+Pj4gKyAgICAgICBzdHJ1Y3QgdWZzX3JvY2tjaGlwX2hvc3QgKmhvc3QgPSB1ZnNo
Y2RfZ2V0X3ZhcmlhbnQoaGJhKTsKPiA+ID4+Pj4+PiArICAgICAgIHN0cnVjdCBnZW5lcmljX3Bt
X2RvbWFpbiAqZ2VucGQgPSBwZF90b19nZW5wZChkZXYtPnBtX2RvbWFpbik7Cj4gPiA+Pj4+Pgo+
ID4gPj4+Pj4gcGRfdG9fZ2VucGQoKSBpc24ndCBzYWZlIHRvIHVzZSBsaWtlIHRoaXMuIEl0J3Mg
c29sZWx5IHRvIGJlIHVzZWQgYnkKPiA+ID4+Pj4+IGdlbnBkIHByb3ZpZGVyIGRyaXZlcnMuCj4g
PiA+Pj4+Pgo+ID4gPj4+Pj4+ICsKPiA+ID4+Pj4+PiArICAgICAgIGNsa19kaXNhYmxlX3VucHJl
cGFyZShob3N0LT5yZWZfb3V0X2Nsayk7Cj4gPiA+Pj4+Pj4gKwo+ID4gPj4+Pj4+ICsgICAgICAg
LyoKPiA+ID4+Pj4+PiArICAgICAgICAqIFNob3VsZG4ndCBwb3dlciBkb3duIGlmIHJwbV9sdmwg
aXMgbGVzcyB0aGFuIGxldmVsIDUuCj4gPiA+Pj4+Pgo+ID4gPj4+Pj4gQ2FuIHlvdSBlbGFib3Jh
dGUgb24gd2h5IHdlIG11c3Qgbm90IHBvd2VyLW9mZiB0aGUgcG93ZXItZG9tYWluIHdoZW4KPiA+
ID4+Pj4+IGxldmVsIGlzIGxlc3MgdGhhbiA1Pwo+ID4gPj4+Pj4KPiA+ID4+Pj4KPiA+ID4+Pj4g
QmVjYXVzZSB1ZnNoY2QgZHJpdmVyIGFzc3VtZSB0aGUgY29udHJvbGxlciBpcyBhY3RpdmUgYW5k
IHRoZSBsaW5rIGlzIG9uCj4gPiA+Pj4+IGlmIGxldmVsIGlzIGxlc3MgdGhhbiA1LiBTbyB0aGUg
ZGVmYXVsdCByZXN1bWUgcG9saWN5IHdpbGwgbm90IHRyeSB0bwo+ID4gPj4+PiByZWNvdmVyIHRo
ZSByZWdpc3RlcnMgdW50aWwgdGhlIGZpcnN0IGVycm9yIGhhcHBlbmVkLiBPdGhlcndpc2UgaWYg
dGhlCj4gPiA+Pj4+IGxldmVsIGlzID49NSwgaXQgYXNzdW1lcyB0aGUgY29udHJvbGxlciBpcyBv
ZmYgYW5kIHRoZSBsaW5rIGlzIGRvd24sCj4gPiA+Pj4+IHRoZW4gaXQgd2lsbCByZXN0b3JlIHRo
ZSByZWdpc3RlcnMgYW5kIGxpbmsuCj4gPiA+Pj4+Cj4gPiA+Pj4+IEFuZCB0aGUgbGV2ZWwgaXMg
Y2hhbmdlYWJsZSB2aWEgc3lzZnMuCj4gPiA+Pj4KPiA+ID4+PiBPa2F5LCB0aGFua3MgZm9yIGNs
YXJpZnlpbmcuCj4gPiA+Pj4KPiA+ID4+Pj4KPiA+ID4+Pj4+IFdoYXQgaGFwcGVucyBpZiB3ZSBw
b3dlci1vZmYgYW55d2F5IHdoZW4gdGhlIGxldmVsIGlzIGxlc3MgdGhhbiA1Pwo+ID4gPj4+Pj4K
PiA+ID4+Pj4+PiArICAgICAgICAqIFRoaXMgZmxhZyB3aWxsIGJlIHBhc3NlZCBkb3duIHRvIHBs
YXRmb3JtIHBvd2VyLWRvbWFpbiBkcml2ZXIKPiA+ID4+Pj4+PiArICAgICAgICAqIHdoaWNoIGhh
cyB0aGUgZmluYWwgZGVjaXNpb24uCj4gPiA+Pj4+Pj4gKyAgICAgICAgKi8KPiA+ID4+Pj4+PiAr
ICAgICAgIGlmIChoYmEtPnJwbV9sdmwgPCBVRlNfUE1fTFZMXzUpCj4gPiA+Pj4+Pj4gKyAgICAg
ICAgICAgICAgIGdlbnBkLT5mbGFncyB8PSBHRU5QRF9GTEFHX1JQTV9BTFdBWVNfT047Cj4gPiA+
Pj4+Pj4gKyAgICAgICBlbHNlCj4gPiA+Pj4+Pj4gKyAgICAgICAgICAgICAgIGdlbnBkLT5mbGFn
cyAmPSB+R0VOUERfRkxBR19SUE1fQUxXQVlTX09OOwo+ID4gPj4+Pj4KPiA+ID4+Pj4+IFRoZSBn
ZW5wZC0+ZmxhZ3MgaXMgbm90IHN1cHBvc2VkIHRvIGJlIGNoYW5nZWQgbGlrZSB0aGlzIC0gYW5k
Cj4gPiA+Pj4+PiBlc3BlY2lhbGx5IG5vdCBmcm9tIGEgZ2VucGQgY29uc3VtZXIgZHJpdmVyLgo+
ID4gPj4+Pj4KPiA+ID4+Pj4+IEkgYW0gdHJ5aW5nIHRvIHVuZGVyc3RhbmQgYSBiaXQgbW9yZSBv
ZiB0aGUgdXNlIGNhc2UgaGVyZS4gTGV0J3Mgc2VlCj4gPiA+Pj4+PiBpZiB0aGF0IGhlbHBzIG1l
IHRvIHBvdGVudGlhbGx5IHN1Z2dlc3QgYW4gYWx0ZXJuYXRpdmUgYXBwcm9hY2guCj4gPiA+Pj4+
Pgo+ID4gPj4+Pgo+ID4gPj4+PiBJIHdhcyBub3QgZmFtaWxpYXIgd2l0aCB0aGUgZ2VucGQgcGFy
dCwgc28gSSBoYXZlbid0IGNvbWUgdXAgd2l0aAo+ID4gPj4+PiBhbm90aGVyIHNvbHV0aW9uLiBJ
dCB3b3VsZCBiZSBncmVhdCBpZiB5b3UgY2FuIGd1aWRlIG1lIHRvIHRoZSByaWdodAo+ID4gPj4+
PiB3YXkuCj4gPiA+Pj4KPiA+ID4+PiBJIGhhdmUgYmVlbiBwbGF5aW5nIHdpdGggdGhlIGV4aXN0
aW5nIGluZnJhc3RydWN0dXJlIHdlIGhhdmUgYXQgaGFuZAo+ID4gPj4+IHRvIHN1cHBvcnQgdGhp
cywgYnV0IEkgbmVlZCBhIGZldyBtb3JlIGRheXMgdG8gYmUgYWJsZSB0byBwcm9wb3NlCj4gPiA+
Pj4gc29tZXRoaW5nIGZvciB5b3UuCj4gPiA+Pj4KPiA+ID4+Cj4gPiA+PiBNdWNoIGFwcHJlY2lh
dGUuCj4gPiA+Pgo+ID4gPj4+Pgo+ID4gPj4+Pj4+ICsKPiA+ID4+Pj4+PiArICAgICAgIHJldHVy
biB1ZnNoY2RfcnVudGltZV9zdXNwZW5kKGRldik7Cj4gPiA+Pj4+Pj4gK30KPiA+ID4+Pj4+PiAr
Cj4gPiA+Pj4+Pj4gK3N0YXRpYyBpbnQgdWZzX3JvY2tjaGlwX3J1bnRpbWVfcmVzdW1lKHN0cnVj
dCBkZXZpY2UgKmRldikKPiA+ID4+Pj4+PiArewo+ID4gPj4+Pj4+ICsgICAgICAgc3RydWN0IHVm
c19oYmEgKmhiYSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ID4gPj4+Pj4+ICsgICAgICAgc3Ry
dWN0IHVmc19yb2NrY2hpcF9ob3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4g
PiA+Pj4+Pj4gKyAgICAgICBpbnQgZXJyOwo+ID4gPj4+Pj4+ICsKPiA+ID4+Pj4+PiArICAgICAg
IGVyciA9IGNsa19wcmVwYXJlX2VuYWJsZShob3N0LT5yZWZfb3V0X2Nsayk7Cj4gPiA+Pj4+Pj4g
KyAgICAgICBpZiAoZXJyKSB7Cj4gPiA+Pj4+Pj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoaGJh
LT5kZXYsICJmYWlsZWQgdG8gZW5hYmxlIHJlZiBvdXQgY2xvY2sgJWRcbiIsIGVycik7Cj4gPiA+
Pj4+Pj4gKyAgICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4gPiA+Pj4+Pj4gKyAgICAgICB9Cj4g
PiA+Pj4+Pj4gKwo+ID4gPj4+Pj4+ICsgICAgICAgcmVzZXRfY29udHJvbF9hc3NlcnQoaG9zdC0+
cnN0KTsKPiA+ID4+Pj4+PiArICAgICAgIHVzbGVlcF9yYW5nZSgxLCAyKTsKPiA+ID4+Pj4+PiAr
ICAgICAgIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoaG9zdC0+cnN0KTsKPiA+ID4+Pj4+PiArCj4g
PiA+Pj4+Pj4gKyAgICAgICByZXR1cm4gdWZzaGNkX3J1bnRpbWVfcmVzdW1lKGRldik7Cj4gPiA+
Pj4+Pj4gK30KPiA+ID4+Pj4+PiArCj4gPiA+Pj4+Pj4gK3N0YXRpYyBpbnQgdWZzX3JvY2tjaGlw
X3N5c3RlbV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ID4+Pj4+PiArewo+ID4gPj4+
Pj4+ICsgICAgICAgc3RydWN0IHVmc19oYmEgKmhiYSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+
ID4gPj4+Pj4+ICsgICAgICAgc3RydWN0IHVmc19yb2NrY2hpcF9ob3N0ICpob3N0ID0gdWZzaGNk
X2dldF92YXJpYW50KGhiYSk7Cj4gPiA+Pj4+Pj4gKwo+ID4gPj4+Pj4+ICsgICAgICAgLyogUGFz
cyBkb3duIGRlc2lyZWQgc3BtX2x2bCB0byBGaXJtd2FyZSAqLwo+ID4gPj4+Pj4+ICsgICAgICAg
YXJtX3NtY2NjX3NtYyhST0NLQ0hJUF9TSVBfU1VTUEVORF9NT0RFLCBST0NLQ0hJUF9TTEVFUF9Q
RF9DT05GSUcsCj4gPiA+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgaG9zdC0+cGRfaWQs
IGhiYS0+c3BtX2x2bCA8IDUgPyAxIDogMCwgMCwgMCwgMCwgMCwgTlVMTCk7Cj4gPiA+Pj4+Pgo+
ID4gPj4+Pj4gQ2FuIHlvdSBwbGVhc2UgZWxhYm9yYXRlIG9uIHdoYXQgZ29lcyBvbiBoZXJlPyBJ
cyB0aGlzIHR1cm5pbmcgb2ZmIHRoZQo+ID4gPj4+Pj4gcG93ZXItZG9tYWluIHRoYXQgdGhlIGRl
diBpcyBhdHRhY2hlZCB0byAtIG9yIHdoYXQgaXMgYWN0dWFsbHkKPiA+ID4+Pj4+IGhhcHBlbmlu
Zz8KPiA+ID4+Pj4+Cj4gPiA+Pj4+Cj4gPiA+Pj4+IFRoaXMgc21jIGNhbGwgaXMgdHJ5aW5nIHRv
IGFzayBmaXJtd2FyZSBub3QgdG8gdHVybiBvZmYgdGhlIHBvd2VyLWRvbWlhbgo+ID4gPj4+PiB0
aGF0IHRoZSBVRlMgaXMgYXR0YWNoZWQgdG8gYW5kIGFsc28gbm90IHRvIHR1cm4gb2ZmIHRoZSBw
b3dlciBvZiBVRlMKPiA+ID4+Pj4gY29ubnRyb2xsZXIuCj4gPiA+Pj4KPiA+ID4+PiBPa2F5LCB0
aGFua3MgZm9yIGNsYXJpZnlpbmchCj4gPiA+Pj4KPiA+ID4+PiBBIGZvbGxvdyB1cCBxdWVzdGlv
biwgZG9uJ3QgeW91IG5lZWQgdG8gbWFrZSBhIGNvcnJlc3BvbmRpbmcgc21jIGNhbGwKPiA+ID4+
PiB0byBpbmZvcm0gdGhlIEZXIHRoYXQgaXQncyBva2F5IHRvIHR1cm4gb2ZmIHRoZSBwb3dlci1k
b21haW4gYXQgc29tZQo+ID4gPj4+IHBvaW50Pwo+ID4gPj4+Cj4gPiA+Pgo+ID4gPj4gWWVzLiBF
YWNoIHRpbWUgZW50ZXJpbmcgc2xlZXAsIHdlIHRlYWNoIEZXIGlmIGl0IG5lZWQgdG8gdHVybiBv
ZmYgb3Iga2VlcAo+ID4gPj4gcG93ZXItZG9tYWluLCBmb3IgaW5zdGFuY2UgImhiYS0+c3BtX2x2
bCA8IDUgPyAxIDogMCIgLCAwIG1lYW5zCj4gPiA+PiBvZmYgYW5kIDEgbWVhbnMgb24uCj4gPiA+
Pgo+ID4gPgo+ID4gPiBXZSBoYWQgYSByZXF1aXJlbWVudCB0byBub3RpZnkgdGhlIGdlbnBkIHBy
b3ZpZGVyIGZyb20gY29uc3VtZXIgdG8gbm90IHR1cm4gb2ZmCj4gPiA+IHRoZSBwb3dlciBkb21h
aW4gZHVyaW5nIHN5c3RlbSBzdXNwZW5kLiBTbyBVbGYgY2FtZSB1cCB3aXRoIGFuIEFQSSBmb3IK
PiA+ID4gY29uc3VtZXJzLCBkZXZpY2Vfc2V0X3dha2V1cF9wYXRoKCkgc2V0dGluZyB0aGUgJ2Rl
di0+cG93ZXIud2FrZXVwX3BhdGgnIHdoaWNoCj4gPiA+IHdpbGwgYmUgaG9ub3JlZCBieSB0aGUg
Z2VucGQgY29yZS4gV2lsbCB0aGF0IHdvcmsgZm9yIHlvdT8KPiA+Cj4gPiBZZXMsIHRoYXQgd29y
a3MuIEFuZCB3ZSBtYXkgbmVlZCBhIHN5bW1ldHJpY2FsIGNhbGwsIGZvciBpbnN0YW5jZSwKPiA+
IGRldmljZV9jbHJfd2FrZXVwX3BhdGgoKSB0byBhbGxvdyBnZW5wZCBwcm92aWRlciB0byB0dXJu
IG9mZiB0aGUgcG93ZXIKPiA+IGRvbWFpbiBhcyB3ZWxsLgo+IAo+IFRoZSBQTSBjb3JlIGNsZWFy
cyB0aGUgZmxhZyBpbiBkZXZpY2VfcHJlcGFyZSgpLiBUaGUgZmxhZyBpcyB0eXBpY2FsbHkKPiBz
dXBwb3NlZCB0byBiZSBzZXQgZnJvbSBhIC0+c3VzcGVuZCgpIGNhbGxiYWNrLCBzbyB0aGVyZSBz
aG91bGQgYmUgbm8KPiBuZWVkIGZvciBhbiBhZGRpdGlvbmFsIGZ1bmN0aW9uIHRoYXQgY2xlYXJz
IHRoZSBmbGFnLCBJIHRoaW5rLgo+IAoKWWVhaCwgdGhhdCdzIG15IHVuZGVyc3RhbmRpbmcgYXMg
d2VsbCB0aG91Z2ggSSBkaWRuJ3QgbG9vayBpbnRvIFBNIGNvcmUgZGVlcGx5LgoKLSBNYW5pCgot
LSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
