Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 816A5C3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 19:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vlEIO1I2zbVQfauf048N2CUYVfUlIOJaDLbS7iVKzU=; b=MJxLLIGB/eKzoG
	wiDLndzxNUzaOYSX85UOGtN4zGxqvP0t8HQCsdMg8GNH7ah7Gncv8YpBmYUYxroamwlwo2vA6MSrm
	wmUQZy5ZxqUHSA3Ld31Y1yw34sLD7Q8AavNutJx53q2MvdTNDOrV6PA1bqHyng/x3TQHSAGmhNIgw
	AT0Vx2NkvADMM2nlAY2gNHB6KWTeCQX4o8g4popNIttCMAbLPCD2pnZrnF4TiMJpjC2403If4WO4q
	JtzkZt5xaiW1WODzC8IDVDKc/Tgl8B+Jj4QRadYCBPrCcTF4vY8WFl0/ffHeKMLnEmm9d8rmaZmv5
	Iss6Pqd26VhR2L/LH1Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWL6U-0000000DKTO-3Oo4;
	Tue, 23 Jul 2024 19:23:18 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWL6R-0000000DKSv-1pq2
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jul 2024 19:23:17 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5c669a0b5d1so3530813eaf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jul 2024 12:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1721762594; x=1722367394; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GZZ6M5b6c2VD9Xbulyz0QyywfiKlBI8D0/GnMKmf/j8=;
        b=1p6rF5pF++xG7DMTCHbDw8985iC5G1dXVgfhz3ZUe/uUMu3V36Hi5yeawKjnFHiXRU
         UOyjiX7AOix/PxIYS4r4S/4jBOyh4b0vK3OK/cED9MVVqCQ8Kw1Chc2UU6aXJzZVH9w2
         IYNKoNLZfgNu2Dadl8SVAyhIABat4qtz5yvSjpKo7H6qWE+3ausUMgGNPGh0xHmPBB/W
         kcCHe7E+d28Wyz8tAdaX3H6A6EdQmdGnfMCpVD0gkKVWxrda+/mPxOXapwqjrNlEVyZR
         TJUO6gFyzFCR4qIHufGNQGWzzhJZ/Qe3XivRcOKTV/yL1TBU53L9sVILURadjTWSyejZ
         zd0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721762594; x=1722367394;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GZZ6M5b6c2VD9Xbulyz0QyywfiKlBI8D0/GnMKmf/j8=;
        b=VtxubICarPdkgqvn0UEHfL4H+VE7q4eCx/58NDHEX4RoenbYE4bSf2ohN2CmKvdunL
         0MYTsHqqwqi8Ll60Gx5LEK6+viDuOBCRfacVE/mdp5k9vBXaW2K0RTRaoeHcehsOAIid
         jZXxCWCVr8dvqljWapu7b+E9A57fa/EkjEiXDO8/3oturNhVjbPb2pXnQgX7L8Lgnlj6
         BfCI0cM7xXkEe3HT3OjuSmw7j98QQoP91W2701i06ioQCDNpF9k7+61rF0nuQb2c0t0C
         a9xZIfZal0K/c8dRrBWMADM02ATDgunR70GkdUGiQAzavr/ETEPX5+KmbGETSLIN+KnK
         JcJA==
X-Forwarded-Encrypted: i=1; AJvYcCU25iSBUtLyaKCCwqXUV8EPfUzdPB4c8P6o1w202sOvs9oPM/CSLiFqANH5/LMHjliNzw+jRgsNe4Dw3AAnBaBP2pVuG8FaSdUSeQC3Ki6A+rmY
X-Gm-Message-State: AOJu0YyH9SiXcVT/B9vBb65bT5Gp6RXijwNImIQGAtwOfdOFePEi2VVz
	IvStLK3cwytgtWdqGU4tUeii9a9BMXaeNw7H29hL9evt+Rp4gNFWfI8pi01BRvA=
X-Google-Smtp-Source: AGHT+IF+r6n7kgWHBgsPUbFEvrRcie15YJofR/I/57SS7RljubMqzpK090DZzv67JREIFGog192J5g==
X-Received: by 2002:a4a:ee07:0:b0:5ce:adf8:291c with SMTP id 006d021491bc7-5d564f84dbfmr15403225eaf.3.1721762593696;
        Tue, 23 Jul 2024 12:23:13 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:820c::580])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b9688748e6sm32520026d6.8.2024.07.23.12.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 12:23:12 -0700 (PDT)
Message-ID: <f8d06bee1a2b71239b737b6a83e1a6734f75c36a.camel@ndufresne.ca>
Subject: Re: [PATCH v4 0/2] Enumerate all pixels formats
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jonas Karlman <jonas@kwiboo.se>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
  mchehab@kernel.org, ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Date: Tue, 23 Jul 2024 15:23:11 -0400
In-Reply-To: <d060ec49-9d48-44a3-8f90-5cee5fe29b75@kwiboo.se>
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
	 <07f62fbb-d1eb-41c3-86a8-13a082a8374f@xs4all.nl>
	 <743e2589-c0df-461d-97d4-fafe78c334ea@collabora.com>
	 <98f5cd5c-cb9c-45ca-a7c7-a546f525c393@xs4all.nl>
	 <2eec786d-f2b6-4445-87f4-4b6d162a2d9a@collabora.com>
	 <dc423e4144e1c9ea32f6adbaa8319e38f1443896.camel@ndufresne.ca>
	 <d060ec49-9d48-44a3-8f90-5cee5fe29b75@kwiboo.se>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_122315_766159_BCA83D11 
X-CRM114-Status: GOOD (  41.95  )
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

SGksCgpMZSB2ZW5kcmVkaSAxOSBqdWlsbGV0IDIwMjQgw6AgMjM6NTkgKzAyMDAsIEpvbmFzIEth
cmxtYW4gYSDDqWNyaXTCoDoKPiBIaSwKPiAKPiBPbiAyMDI0LTA3LTE5IDE3OjM2LCBOaWNvbGFz
IER1ZnJlc25lIHdyb3RlOgo+ID4gSGksCj4gPiAKPiA+IExlIHZlbmRyZWRpIDE5IGp1aWxsZXQg
MjAyNCDDoCAxNTo0NyArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgYSDDqWNyaXTCoDoKPiA+ID4g
PiBXaGF0IGV4YWN0bHkgaXMgdGhlIHByb2JsZW0geW91IHdhbnQgdG8gc29sdmU/IEEgcmVhbC1s
aWZlIHByb2JsZW0sIG5vdCBhIHRoZW9yZXRpY2FsCj4gPiA+ID4gb25lIDotKQo+ID4gPiAKPiA+
ID4gT24gcmVhbC1saWZlOiBvbiBhIGJvYXJkIHdpdGggMiBkaWZmZXJlbnQgc3RhdGVsZXNzIGRl
Y29kZXJzIGJlaW5nIGFibGUgdG8gZGV0ZWN0IHRoZQo+ID4gPiBvbmUgd2hpY2ggY2FuIGRlY29k
ZSAxMCBiaXRzIGJpdHN0cmVhbXMgd2l0aG91dCB0ZXN0aW5nIGFsbCBjb2RlYy1kZXBlbmRlbnQg
Y29udHJvbHMuCj4gPiAKPiA+IFRoYXQgbGVhbnMgdG93YXJkIGdpdmluZyBhbiBhbnN3ZXIgZm9y
IHRoZSBzZWxlY3RlZCBiaXRzdHJlYW0gZm9ybWF0IHRob3VnaCwKPiA+IHNpbmNlIHRoZSBzYW1l
IGRyaXZlciBtYXkgZG8gMTBiaXQgSEVWQyB3aXRob3V0IDEwYml0IEFWMS4KPiA+IAo+ID4gRm9y
IHRoZSB1c2UgY2FzZSwgYm90aCBDaHJvbWl1bSBhbmQgR1N0cmVhbWVyIGhhdmUgYSBuZWVkIHRv
IGNhdGVnb3JpemVkCj4gPiBkZWNvZGVycyBzbyB0aGF0IHdlIGF2b2lkIHRyeWluZyB0byB1c2Ug
ZGVjb2RlciB0aGF0IGNhbid0IGRvIHRoYXQgdGFzay4gTW9yZQo+ID4gcGxhdGZvcm1zIGFyZSBn
ZXR0aW5nIG11bHRpcGxlIGRlY29kZXJzLCBhbmQgd2UgYWxzbyBuZWVkIHRvIHRha2UgaW50byBh
Y2NvdW50Cj4gPiB0aGUgYXZhaWxhYmxlIHNvZnR3YXJlIGRlY29kZXJzLgo+ID4gCj4gPiBKdXN0
IGxvb2tpbmcgYXQgdGhlIGNvZGVjIHNwZWNpZmljIHByb2ZpbGUgaXMgaW5zdWZmaWNpZW50IHNp
bmNlIHdlIG5lZWQgdHdvCj4gPiBjb25kaXRpb25zIHRvIGJlIG1ldC4KPiA+IAo+ID4gMS4gVGhl
IGRyaXZlciBtdXN0IHN1cHBvcnQgMTBiaXQgZm9yIHRoZSBzcGVjaWZpYyBDT0RFQyAoZm9yIG1v
c3QgY29kZWMgdGhpcyBpcwo+ID4gcHJvZmlsZSB2aXNpYmxlKQo+ID4gMi4gVGhlIHByb2R1Y2Vk
IDEwYml0IGNvbG9yIGZvcm1hdCBtdXN0IGJlIHN1cHBvcnRlZCBieSB1c2Vyc3BhY2UKPiA+IAo+
ID4gSW4gdG9kYXkncyBpbXBsZW1lbnRhdGlvbiwgaW4gb3JkZXIgdG8gdGVzdCB0aGlzLCB3ZSdk
IG5lZWQgdG8gc2ltdWxhdGUgYSAxMGJpdAo+ID4gaGVhZGVyIGNvbnRyb2wsIHNvIHRoYXQgd2hl
biBlbnVtZXJhdGluZyB0aGUgZm9ybWF0cyB3ZSBnZXQgYSBsaXN0IG9mIDEwYml0Cj4gPiAob3B0
aW9uYWxseSA4Yml0IHRvbywgc2luY2Ugc29tZSBkZWNvZGVyIGNhbiBkb3duc2NhbGUgY29sb3Jz
KSBhbmQgZmluYWxseQo+ID4gdmVyaWZ5IHRoYXQgdGhlc2UgcGl4ZWwgZm9ybWF0cyBhcmUga25v
dyBieSB1c2Vyc3BhY2UuIFRoaXMgaXMgbm90IGltcG9zc2libGUsCj4gPiBidXQgdmVyeSB0ZWRp
b3VzLCB0aGlzIHByb3Bvc2FsIHdlIHRvIHRyeSBhbmQgbWFrZSB0aGlzIGVhc2llci4KPiAKPiBJ
IGhhdmUgYWxzbyBiZWVuIHdvbmRlcmluZyB3aGF0IHRoZSB1c2UtY2FzZSBvZiB0aGlzIHdvdWxk
IGJlLCBhbmQgaWYgaXQKPiBpcyBzb21ldGhpbmcgdG8gY29uc2lkZXIgYmVmb3JlIGEgRkZtcGVn
IHY0bDItcmVxdWVzdCBod2FjY2VsIHN1Ym1pc3Npb24uCj4gCj4gSSBhbSBndWVzc2luZyBHU3Ry
ZWFtZXIgbWF5IG5lZWQgdG8gZGVjaWRlIHdoYXQgZGVjb2RlciB0byB1c2UgcHJpb3IgdG8KPiBi
aXRzdHJlYW0gcGFyc2luZy9kZWNvZGluZyBoYXMgc3RhcnRlZD8KCkluIEdTdHJlYW1lciwgdGhl
IHBhcnNpbmcgaXMgaGFwcGVuaW5nIGJlZm9yZSB0aGUgZGVjb2Rlci4gVGhlIHBhcnNlciBnZW5l
cmF0ZXMKY2FwYWJpbGl0aWVzIHRoYXQgYXJlIHVzZWQgZHVyaW5nIHRoZSBkZWNvZGVyIHNlbGVj
dGlvbi4gVGhvdWdoLCBmb3IgcGVyZm9ybWFuY2UKcmVhc29uIChHU3RyZWFtZXIgaXMgcGx1Z2lu
IGJhc2VkLCBhbmQgbG9hZGluZyBhbGwgdGhlIHBsdWdpbnMgYWxsIHRoZSB0aW1lCmR1cmluZyBw
bGF5YmFjayBpcyB0b28gc2xvdyksIHdlIGdlbmVyYXRlIHN0YXRpYyBpbmZvcm1hdGlvbiBhYm91
dCB0aGVzZQpkZWNvZGVycyBhbmQgY2FjaGUgdGhlIHJlc3VsdHMuIFRoaXMgaW5mb3JtYXRpb24g
dXN1YWxseSBvbmx5IGNvbnRhaW5zCnByb2ZpbGUvbGV2ZWwgYW5kIHNvbWUgbWluL21heCByZXNv
bHV0aW9uIHdoZW4gYXZhaWxhYmxlLiBCdXQgYmVpbmcgYWJsZSB0bwpkaXNjYXJkIHByb2ZpbGUg
aWYgKGFzIGFuIGV4YW1wbGUpIHRoZSBwcm9kdWNlZCAxMGJpdCBwaXhlbCBmb3JtYXQgaXMgbm90
CnN1cHBvcnRlZCBieSBHU3RyZWFtZXIgaXMgc29tZXRoaW5nIHdlIHdhbnQgaW4gdGhlIGxvbmcg
cnVuLiBJdHMgbm90IGVzc2VudGlhbApvZiBjb3Vyc2UuCgpXZSBkbyB0aGF0IGxpbWl0YXRpb24g
aW4gdGhlIHBsdWdnZXIgdGhhdCB3ZSBjYW4ndCBmYWxsYmFjayBhZnRlciB0aGUgZmlyc3QKYml0
c3RyZWFtIGFzIGJlZW4gcGFzc2VkIHRvIHRoZSBkZWNvZGVyLCBidXQgdGhpcyBjb3VsZCBpbiB0
aGVvcnkgYmUgcmVzb2x2ZWQKYW5kIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoaXMgcHJvcG9z
YWwuIFRoZSBwcm9wb3NhbCBpcyBqdXN0IHRvIGhlbHAKdXNlcnNwYWNlIGNvZGUgc3RheSBzaW1w
bGUgYW5kIHJlbGF0aXZlbHkgQ09ERUMgYWdub3N0aWMuCgo+IAo+IEZvciBteSByZS13b3JrZWQg
RkZtcGVnIHY0bDItcmVxdWVzdCBod2FjY2VsIHNlcmllcywgc2hvdWxkIGhpdAo+IGZmbXBlZy1k
ZXZlbCBsaXN0IGFueSBkYXkgbm93LCB3ZSB0cnkgdG8gcHJvYmUgZWFjaCB2aWRlbyBkZXZpY2Ug
b25lCj4gYnkgb25lIHRyeWluZyB0byBpZGVudGlmeSBpZiBpdCB3aWxsIGJlIGNhcGFibGUgdG8g
ZGVjb2RlIGN1cnJlbnQgc3RyZWFtCj4gaW50byBhIGtub3duL3N1cHBvcnRlZCBjYXB0dXJlIGZv
cm1hdCBbMV0sIHRoaXMgdHlwaWNhbGx5IGhhcHBlbiB3aGVuCj4gaGVhZGVyIGZvciBmaXJzdCBz
bGljZS9mcmFtZSBoYXMgYmVlbiBwYXJzZWQgYW5kIGlzIHVzZWQgdG8gbGV0IGRyaXZlcgo+IHNl
bGVjdCBpdHMgcHJlZmVycmVkL29wdGltYWwgY2FwdHVyZSBmb3JtYXQuIFRoZSBmaXJzdCBkZXZp
Y2Ugd2hlcmUgYWxsCj4gdGVzdCBwYXNzZXMgd2lsbCBiZSB1c2VkIGFuZCBpZiBub25lIHdvcmtz
IEZGbXBlZyB2aWRlbyBwbGF5ZXJzIHdpbGwKPiB0eXBpY2FsbHkgZmFsbGJhY2sgdG8gdXNlIHNv
ZnR3YXJlIGRlY29kaW5nLgo+IAo+IFRoaXMgdHlwZSBvZiBwcm9iaW5nIG1heSBiZSBhIGxpdHRs
ZSBiaXQgbGltaXRpbmcgYW5kIGRlcGVuZCB0b28gaGVhdnkKPiBvbiB0aGUgTTJNIFN0YXRlbGVz
cyBWaWRlbyBEZWNvZGVyIEludGVyZmFjZSAiSXQgaXMgc3VnZ2VzdGVkIHRoYXQgdGhlCj4gZHJp
dmVyIGNob29zZXMgdGhlIHByZWZlcnJlZC9vcHRpbWFsIGZvcm1hdCBmb3IgdGhlIGN1cnJlbnQK
PiBjb25maWd1cmF0aW9uLiIuCj4gCj4gV291bGQgeW91IHN1Z2dlc3QgSSBjaGFuZ2UgaG93IHRo
aXMgcHJvYmluZyBpcyBoYXBwZW5pbmcgdG8gbWFrZSBzb21lCj4gbW9yZSBjbGV2ZXIgZGV0ZWN0
aW9uIG9mIHdoYXQgbWVkaWErdmlkZW8gZGV2aWNlIHNob3VsZCBiZSB1c2VkIGZvciBhCj4gc3Bl
Y2lmaWMgc3RyZWFtIHdpdGggaGVscCBvZiB0aGlzIG5ldyBmbGFnPwoKSW4gZ2VuZXJhbCwgdGhl
cmUgaXMgb25seSAxIG9yIDIgZGVjb2Rlciwgc28gdGhpcyBwcm9jZXNzIHNob3VsZCBiZSBmYXN0
LiBJCmd1ZXNzIGlmIHdlIHN0YXJ0IHNlZWluZyBsYXJnZSBhcnJheSBvciBkZWNvZGVyIChlLmcu
IGFycmF5IG9mIFBDSWUgYWNjZWxlcmF0b3JzCm9yIHNpbWlsYXIpIHRoYXQgY291bGQgYmVjb21l
IGludGVyZXN0aW5nIHRvIGNhY2hlIHRoZSBpbmZvcm1hdGlvbi4KCkkgdGhpbmsgdGhlIGRpZmZl
cmVuY2UgaXMgdGhhdCB5b3UgaGF2ZSB0aGUgZnVsbCBiaXRzdHJlYW0gaGVhZGVyIGF2YWlsYWJs
ZSBhdAp0aGUgdGltZSB5b3UgYXJlIHRvIGRlY2lkZSB3aGljaCBkZWNvZGVyIHRvIHVzZSwgSSBv
bmx5IGhhdmUgYSBhYnN0cmFjdCBzdW1tYXJ5CmluIEdTdHJlYW1lci4gSW4gc2hvcnQsIHlvdSBk
b24ndCBoYXZlIHRvIGNyYWZ0IGFueXRoaW5nLCB3aGljaCBpcyBuaWNlLgoKTmljb2xhcwoKPiAK
PiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL0t3aWJvby9GRm1wZWcvYmxvYi92NGwycmVxdWVzdC0y
MDI0LXYyL2xpYmF2Y29kZWMvdjRsMl9yZXF1ZXN0X3Byb2JlLmMjTDM3My1MNDI0Cj4gCj4gUmVn
YXJkcywKPiBKb25hcwo+IAo+ID4gCj4gPiBOaWNvbGFzCj4gPiAKPiA+IAo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gS2VybmVsIG1haWxpbmcg
bGlzdCAtLSBrZXJuZWxAbWFpbG1hbi5jb2xsYWJvcmEuY29tCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBrZXJuZWwtbGVhdmVAbWFpbG1hbi5jb2xsYWJvcmEuY29tCj4gVGhpcyBs
aXN0IGlzIG1hbmFnZWQgYnkgaHR0cHM6Ly9tYWlsbWFuLmNvbGxhYm9yYS5jb20KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
