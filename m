Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68617C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 17:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHk2EiTUgJi7bifYDtqyCvq2l8tGKBlhrycyjEq/06w=; b=OWJ/H+dvxeNEub
	xvgsNq74qKJ68JALvxAPPuXmPp5YPeuqWBhyrp64gFxHW1BFRac8KuukQMZyTdr3JjoJMv+2btOZf
	7MigDHntukLILDrckvl35QrxBkizt6hFh0GEV/at8WDSyigL2YuvKgd0On8mSGpcblwMc9vNb6JIX
	ylcmyKdJwKQJ0+C5OEBX9s+a56C5L/ebWdz9PzYVaPEFTbCTR2ImuXFcIulEGnLg5sSBYSkd3brW0
	cW8bLwT8CFDvGlTAjdiNbqdni53M02ca9xK6N6SQmq8RGWNVIt6fD3H7srtE/XSJWNmEeYJPprSk0
	WoOnYzUquYKoDjzBh13w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc9nF-007Ppu-Oh; Wed, 06 Apr 2022 17:50:09 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc9nC-007Pp9-VB
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 17:50:08 +0000
Received: by mail-qt1-x831.google.com with SMTP id o15so5633647qtv.8
 for <linux-rockchip@lists.infradead.org>; Wed, 06 Apr 2022 10:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :content-transfer-encoding:user-agent:mime-version;
 bh=nbgYNk5Esw76+oSTzku5Iq0RBseYj50R251OC+s1Zko=;
 b=oE77XjhZJdBZs73vBmWDSWOcpU+0g2TAF7dqKJsm0FrsMjk1RH5VR1BlQ5zyc+Ew0E
 YAyZ7/3GSXX52HLi4w0ZLcWVx8WEfp2H70UxOLZhb4x9Tw8uCMDrbM5d5FHn6SM8+gwO
 oJK9Mz7nWH9ol3Rrrfkwe3OikbspOO3ypvUVHlstZXQHmen/ZBRY15meUrtAA7c3OsiH
 QTmrE/4Q7sxCk3fFXjAd0HZnALSONcplj2n9nhPVNVpiCO2IvqkTQM6QBRqJh5D4ZlDw
 eJ5RkVM+Vz9/V7oOKSfMoNmKqTRPPtOn7EnIojoHf3XYwhNUGCPXlmEsvVhrbnUTWod8
 nu/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:content-transfer-encoding:user-agent:mime-version;
 bh=nbgYNk5Esw76+oSTzku5Iq0RBseYj50R251OC+s1Zko=;
 b=5ugkkCctm+cP9ot7iUbMFZOJJ6MWQ+vO2507EAARzn6/8V3/xeR7JUIkC+S74RPCGV
 Y6qOUHpuyeZFA+6ryHR6QqQqYSYq6oinAaPXWPnyyvgjS1NR0pv4yyVFNnIgcuwHoED6
 YMn3TFbNMa887C7uTrjMNRp/BeABDeLq6FwGjUSFEO6Ze+PNcRfHbztq3xb4CTSYWA/G
 a73UE8s8mjqLo2N3dJxNeB6/h5VhwTiB/ICN5uQJveuW6l424Q08t9kQEA5an3D0JtBp
 vWkzjUAw/dWfjIylzobuXpDDQN8PI01S+gx+Fx0tGSlMo3RkLn0LA+0xey1q6wDqIURK
 rFwg==
X-Gm-Message-State: AOAM531W6BtQPKSridca17FyScX7rmSj2J/yZ+awq05yR6czbCHjmXcY
 yYi3ny6dac5kcu9AZTf94spSOw==
X-Google-Smtp-Source: ABdhPJylSRQCASHDcc/QNJp7o7BwkgXxThlNUItggDkKtsHMdcE9vZQxW5pxT61gwxRLUSzl83zB0g==
X-Received: by 2002:ac8:5a8f:0:b0:2e1:df21:d86f with SMTP id
 c15-20020ac85a8f000000b002e1df21d86fmr8769717qtc.450.1649267404445; 
 Wed, 06 Apr 2022 10:50:04 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168]) by smtp.gmail.com with ESMTPSA id
 78-20020a370551000000b0067e3a58c090sm10057930qkf.82.2022.04.06.10.50.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Apr 2022 10:50:04 -0700 (PDT)
Message-ID: <fd9917c2bdb41f361a1ecac2dfa8d85473c9f0f2.camel@ndufresne.ca>
Subject: Re: [RFC PATCH 0/8] media: hantro: Add 10-bit support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jernej =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org,  wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,  linux-sunxi@lists.linux.dev
Date: Wed, 06 Apr 2022 13:50:02 -0400
In-Reply-To: <2820101.e9J7NaK4W3@jernej-laptop>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
 <4386971.LvFx2qVVIh@jernej-laptop>
 <bf938b83-2b57-95b3-4bcb-f967bbb46413@collabora.com>
 <2820101.e9J7NaK4W3@jernej-laptop>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_105007_248282_480303DC 
X-CRM114-Status: GOOD (  32.92  )
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

TGUgbWVyY3JlZGkgMDYgYXZyaWwgMjAyMiDDoCAxOToyMSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IGEgw6ljcml0wqA6Cj4gRG5lIHNyZWRhLCAwNi4gYXByaWwgMjAyMiBvYiAwODo1NDowNyBDRVNU
IGplIEJlbmphbWluIEdhaWduYXJkIG5hcGlzYWwoYSk6Cj4gPiBMZSAwNS8wNC8yMDIyIMOgIDIw
OjQwLCBKZXJuZWogxaBrcmFiZWMgYSDDqWNyaXQgOgo+ID4gPiBIaSBCZW5qYW1pbiEKPiA+ID4g
Cj4gPiA+IERuZSB0b3JlaywgMDUuIGFwcmlsIDIwMjIgb2IgMTg6MDc6NDEgQ0VTVCBqZSBCZW5q
YW1pbiBHYWlnbmFyZCAKPiBuYXBpc2FsKGEpOgo+ID4gPiA+IExlIDI3LzAyLzIwMjIgw6AgMTU6
NDksIEplcm5laiBTa3JhYmVjIGEgw6ljcml0IDoKPiA+ID4gPiA+IEZpcnN0IHR3byBwYXRjaGVz
IGFkZCAxMC1iaXQgZm9ybWF0cyB0byBVQVBJLCB0aGlyZCBleHRlbmRzIGZpbHRlcmluZwo+ID4g
PiA+ID4gbWVjaGFuaXNtLCBmb3VydGggZml4ZXMgaW5jb3JyZWN0IGFzc3VtcHRpb24sIGZpZnRo
IG1vdmVzIHJlZ2lzdGVyCj4gPiA+ID4gPiBjb25maWd1cmF0aW9uIGNvZGUgdG8gcHJvcGVyIHBs
YWNlLCBzaXh0aCBhbmQgc2V2ZW50aCBlbmFibGUgMTAtYml0Cj4gPiA+ID4gPiBWUDkgZGVjb2Rp
bmcgb24gQWxsd2lubmVyIEg2IGFuZCBsYXN0IGluY3JlYXNlcyBjb3JlIGZyZXF1ZW5jeSBvbgo+
ID4gPiA+ID4gQWxsd2lubmVyIEg2Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJJ20gc2VuZGluZyB0
aGlzIGFzIFJGQyB0byBnZXQgc29tZSBjb21tZW50czoKPiA+ID4gPiA+IDEuIGZvcm1hdCBkZWZp
bml0aW9ucyAtIGFyZSBmb3VyY2MncyBvaz8gYXJlIGNvbW1lbnRzL2Rlc2NyaXB0aW9ucyBvaz8K
PiA+ID4gPiA+IDIuIGlzIGV4dGVuZGVkIGZpbHRlcmluZyBtZWNoYW5pc20gb2s/Cj4gPiA+ID4g
PiAKPiA+ID4gPiA+IEkgd291bGQgYWxzbyBsaWtlIGlmIHRoZXNlIHBhdGNoZXMgYXJlIHRlc3Rl
ZCBvbiBzb21lIG1vcmUgSFcuCj4gPiA+ID4gPiBBZGRpdGlvbmFsbHksIGNhbiBzb21lb25lIHRl
c3QgdGlsZWQgUDAxMD8KPiA+ID4gPiA+IAo+ID4gPiA+ID4gUGxlYXNlIHRha2UgYSBsb29rLgo+
ID4gPiA+IAo+ID4gPiA+IEhpIEplcm5laiwKPiA+ID4gPiAKPiA+ID4gPiBJIGhhdmUgY3JlYXRl
IGEgYnJhbmNoIHRvIHRlc3QgdGhpcyBzZXJpZXMgd2l0aCBWUDkgYW5kIEhFVkM6Cj4gPiA+ID4g
aHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9iZW5qYW1pbi5nYWlnbmFyZC9mb3ItdXBzdHJl
YW0vLS90cmVlLzEwYml0Xwo+ID4gPiA+IGlteCA4bSBGZWVsIGZyZWUgdG8gcGljayB3aGF0IEkg
bWF5IG5lZWQgaW4gaXQuCj4gPiA+ID4gCj4gPiA+ID4gVGhhdCBkb2Vzbid0IGltcHJvdmUgZmx1
c3RlciBzY29yZXMsIEkgdGhpbmsgbW9yZSBkZXYgYXJlIHN0aWxsIG5lZWRlZCBpbgo+ID4gPiA+
IEdTVCBiZWZvcmUgZ2V0dGluZyBzb21ldGhpbmcgZnVsbHkgZnVuY3Rpb25hbC4KPiA+ID4gPiBB
bnl3YXkgSSBhYmxlIHRvIHNlbGVjdCBQMDEwIHBpeGVsIGZvcm1hdCBpZiB0aGUgaW5wdXQgaXMg
YSAxMGJpdAo+ID4gPiA+IGJpdHN0cmVhbS4+IAo+ID4gPiBXaGF0IGtpbmQgb2YgaW1wcm92ZW1l
bnRzIGRvIHlvdSBleHBlY3Q/IEFjdHVhbGx5LCB0aGlzIHNlcmllcyBpcyBkZXNpZ25lZAo+ID4g
PiB0byBjaGFuZ2Ugbm90aGluZyBmb3IgcGxhdGZvcm1zLCB3aGVyZSAxMC1iaXQgZm9ybWF0IGlz
IG5vdCBhZGRlZCBpbnRvCj4gPiA+IHRoZSBsaXN0IG9mIHN1cHBvcnRlZCBmb3JtYXRzLiBJIHRo
aW5rIHJlYXNvbnMgYXJlIHF1aXRlIG9idmlvdXMuIEZpcnN0LAo+ID4gPiBub3QgZXZlcnkgZGV2
aWNlIG1heSBzdXBwb3J0IDEwLWJpdCBvdXRwdXQuIFNlY29uZCwgYXMgeW91IG1pZ2h0IGFscmVh
ZHkKPiA+ID4gZmlndXJlZCBpdCBvdXQsIHJlZ2lzdGVycyBpbiB0aGlzIHNlcmllcyBhcmUgc2V0
IG9ubHkgZm9yIGxlZ2FjeSBjb3Jlcy4gSQo+ID4gPiBoYXZlIG5vIGlkZWEsIHdoYXQgbmVlZHMg
dG8gYmUgZG9uZSBmb3IgbmV3ZXIgb25lcywgc2luY2UgSSBkb24ndCBoYXZlCj4gPiA+IHRoZW0u
IEFueXdheSwgSSB0ZXN0ZWQgdGhpcyB3aXRoIGZsdXN0ZXIgYW5kIG9ubHkgb25lIGFkZGl0aW9u
YWwgdGVzdAo+ID4gPiBwYXNzZXMsIGJlY2F1c2UgaXQgaXMgdGhlIG9ubHkgb25lIGZvciAxMC1i
aXQgWVVWNDIwLgo+ID4gCj4gPiBJbiB0aGlzIHNlcmllcyB5b3Ugd2lsbCBmaW5kIHRoYXQgSSBo
YXZlIGFkZGVkIHRoZSByZWdpc3RlcnMgZm9yIHRoZSBuZXcKPiA+IGNvcmVzLCBmaXggaGV2YyB0
byBiZSBhYmxlIHRvIHVzZSAxMC1iaXQsIGFuZCBlbmFibGUgdGhhdCBpbiBJTVg4TS4KPiAKPiBZ
b3VyIGNoYW5nZXMgc2VlbXMgcmVhc29uYWJsZSwgYnV0IGF0IHRoaXMgcG9pbnQgSSB3b3VsZG4n
dCBib3RoZXIgd2l0aCAKPiBmbHVzdGVyLiBJbnN0ZWFkLCB0cnkgdG8gdGVzdCB3aXRoIG9uZSBz
cGVjaWZpYyBiaXRzdHJlYW0gb3IgZXZlbiBhIHNhbXBsZSB2aWRlbyAKPiBmaWxlLiBJIGp1c3Qg
dGVzdGVkIHdpdGggb25lIHJhbmRvbSAxMC1iaXQgVlA5IHZpZGVvIHRoYXQgSSBmb3VuZCB3aGVu
IHdvcmtpbmcgCj4gb24gdGhpcyBzZXJpZXMuIFRoYXQgd2F5IHlvdSBhdm9pZCBhbnkgY29ybmVy
IGNhc2VzIHdoaWNoIHNvbWV0aW1lcyBwbGFxdWUgCj4gZmx1c3RlciB0ZXN0aW5nIChyZWZlcmVu
Y2UgYml0c3RyZWFtcyBzbWFsbGVyIHRoYW4gbWluLiBzdXBwb3J0ZWQgc2l6ZSkuIAo+IEFueXdh
eSwgcmUtY2hlY2sgdmVuZG9yIGxpYiBpZiB0aGVyZSBpcyBhbnkgb3RoZXIgcGxhY2UgdG8gYWRq
dXN0IHNvbWV0aGluZyAKPiBmb3IgMTAtYml0LgoKSnVzdCBzbyB3ZSBkb24ndCBmb3JnZXQsIHRo
ZXJlIGlzIGEgaGFuZGZ1bCBvZiAxMGJpdCB0ZXN0cyB0aGF0IERhbmllbCBBbG1laWRhCm9taXR0
ZWQgd2hlbiBoZSBhZGRlZCB0ZXN0cyB0byBmbHVzdGVyICh0aG91Z2ggb25seSAxIGlzIDQyMCku
IEkgd2lsbCB0cnkgYW5kCmZpeCB0aGF0IGxhdGVyIG9uLiBUaGVyZSBpcyBvdGhlcndpc2UgNUcg
d29ydGggb2YgMTBiaXQgdGVzdHMgYXZhaWxhYmxlLiBJbgpmbHVzdGVyIHdlIGRlY2lkZWQgdG8g
Z28gZm9yIHRoZSBzYW1lIHN1YnNldCBsaWJ2cHggdXNlcywgb3RoZXJ3aXNlIG5vIG9uZSB3b3Vs
ZApldmVyIHdhbnQgdG8gZG93bmxvYWQgdGhlc2UgdGVzdHMuCgpodHRwczovL3N0b3JhZ2UuZ29v
Z2xlYXBpcy5jb20vZG93bmxvYWRzLndlYm1wcm9qZWN0Lm9yZy92cDkvZGVjb2Rlci10ZXN0LXN0
cmVhbXMvUHJvZmlsZV8yXzEwYml0LgoKQWJvdXQgdGhlICJtaW4gc3VwcG9ydGVkIiwgRzIgVlA5
IHNjb3JlcyBpcyAxNTcvMzAzIGhlcmUgKGluIGNvbXBhcmlzaW9uIHJrdmRlYwppcyAyMjUsIGFu
ZCBNVEsgVkNPREVDIDI3NSkuIEF0IHRoaXMgZmFpbHVyZSBsZXZlbCB0aGlzIGhhcyBubyBsb25n
ZXIgYW55dGhpbmcKdG8gZG8gd2l0aCB0aGUgc2l6ZSBvZiB0aGUgcmVuZGVyLiBUaGVyZSBpcyBs
aWtlbHkgY291cGxlIG9mIGJ1Z3MgaGlkZGVuIGluIHRoZQpkcml2ZXIgZm9yIHRoZSBjb3JuZXIg
Y2FzZXMgdGVzdGVkIGJ5IHRoZSBzdWl0ZS4gQWxzbywgdG8gaWxsdXN0cmF0ZSB0aGF0IHRoZQpz
aXplIGlzbid0IHRoZSBvbmx5IHZhcmlhYmxlIGluIHRoZSBmYWlsdXJlcywgd2UgaGF2ZSBhIHZw
OTAtMi0wMi1zaXplLQo2NHgzNC53ZWJtIHRoYXQgcGFzcyAodGhlIGRyaXZlciBwcmV0ZW5kcyB0
aGF0IDY0eDY0IGlzIHRoZSBtaW5pbXVtKS4gSSBkaWRuJ3QKbG9vayBhdCBHMiBvdXRwdXQgdmVy
eSBjbG9zZWx5LCBidXQgb24gUktWREVDLCBpbiBzaW1pbGFyIGZhaWx1cmVzIHdlIGhhdmUKcGVy
ZmVjdCBrZXlmcmFtZSwgYW5kIGEgc2luZ2xlIGNvcnJ1cHRlZCB0aWxlIG9uIHRoZSBmb2xsb3dp
bmcgZGVjb2RlLiBNeSBiZWxpZWYKaXMgdGhhdCB0aGVyZSBpcyBidWdzIGluIHRoZSBkcml2ZXJz
IHRvIGJlIGZvdW5kIGFuZCBmaXhlZC4gSW4gYWJzZW5jZSBvZiB2ZW5kb3IKc3VwcG9ydCwgb3Ig
d29ya2luZyByZWZlcmVuY2UgaXQgd2lsbCBiZSBkaWZmaWN1bHQgLyBuZWFyIGltcG9zc2libGUg
dG8gZml4LCBidXQKSSdtIGRvY3VtZW50aW5nIHRoaXMgc28gd2Ugc3RvcCB0aGlua2luZyB0aGlz
IGlzIGp1c3QgIm5vdCBzdXBwb3J0ZWQiLgoKY2hlZXJzLApOaWNvbGFzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
