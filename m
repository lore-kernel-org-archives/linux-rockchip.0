Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 263BBC7EE22
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 May 2023 19:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3CGu81zn0SSL1W7Ue0yRLwZ7cPqRLKnW7NL/cgofSI=; b=dCH/9nwsOKIEOA
	RK/6NrRYSvWPqbVSqutjMaxKuLh67b1JcZvMGTWLWJSCFq9dlsqJgm3+AKyBO2Sxc8sDjcW+8VEay
	x5gYTVko+lKpSvQkcTTQ2ZoDYLUYGMLk1RAOleoH8HEN/hNlD8hyTTHFLysPGxVm9+YveKUX16BBM
	ASA2fSIC93haximE+ZdK2VQAtmPjB/2SGlYRd4inA+et8I09tuyvkYk4d5uB33NAFH+S3AkpnBbl8
	HTIckqmxJwRchJBTyDUtwsVsqsjImpHmtecbP4sSTZS2edI5H1w43LoJFUhldy7rI50J4aWiunYse
	KHHpx0g3osqQC5Iw7WgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwplc-006rGE-16;
	Wed, 10 May 2023 19:46:28 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwplY-006rFk-2M;
	Wed, 10 May 2023 19:46:26 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50b37f3e664so13625066a12.1;
        Wed, 10 May 2023 12:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683747980; x=1686339980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B1Ax+C4uVpShkrhGJuWjnQ32NyLaUTtPNx+vaWWWtRo=;
        b=qKtDqwcdFt3Z+xjetBlVll3ql6lmXwZ3cZaMEO7+qOH50NSVWdMVREhDc20U80fTyz
         +wMBDiofE9h/RnnjIf9E90ZqTvCkVtp1jkOJf8JL8V5cczXOrC0GgO4YlnC2uhten5D2
         3F9dHcFhisygtrTq9+dHqR6szwodWTBmEm/mjMF/N0RPmlVWPhmEB2Uz7DGlg5DTaH70
         8qPZduFC19NIF56VzusFy83xPpZQkwD2P0IoL3s7q7NbA4tpj7Jlp8eCjzZDcZxs2RBI
         lHKsqpAJHl6BnA5EDqjY35rF3GBBb3PO0gi2DaloEZAJjLZCHQsBM1/UCD+wN1S7PrPi
         PN/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683747980; x=1686339980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B1Ax+C4uVpShkrhGJuWjnQ32NyLaUTtPNx+vaWWWtRo=;
        b=Fw937XOy/l08dw4KHJTKdu/qebZQkRXbkpkNui1zjLEnP4/lhdgSMVVE8jPb5cFOkE
         IfhT3+q4+omaLpeo+QJVJFHhQmjqpd0TsIuWJnwdsqtCEV3N2Cy9TG5JJtOZsuYSQmL1
         xKW93MgwdCV9y46Fdroh7ba051uXwR6xMAYYoOPL/JdAxjydV05mxILgUtnqLRyU2Nj1
         0wvDZgyJg2AxVffNWuyL/EUdSMFNPuGZZGzkLakUZbr2Dq83OkV0N66bHbBbaZXd5+ba
         hR2TwhFDOiCAMm+gDbf8mbO9A2aevCdL1bOpq6J+mAakXoL1XHceQKxpAhSl7NZJx6EJ
         XvkQ==
X-Gm-Message-State: AC+VfDyfhCJcr6UWi9zn07BS77iyA9UxNk54ic0mdtXqkfe0ES3/vITo
	0FxLkotzogUTEgltRVjoBK7c+QcsE8/x4BiarFc=
X-Google-Smtp-Source: ACHHUZ71b7omNvOYvmXMlT5h+vZxL1cQOXXwSCWfa8NRKmoq3Ab93DsePztpxij0ZcDDi+9V49IW6SYFiysEQeq+vz0=
X-Received: by 2002:a05:6402:203:b0:506:a561:b0a9 with SMTP id
 t3-20020a056402020300b00506a561b0a9mr15705456edv.14.1683747979721; Wed, 10
 May 2023 12:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230509153912.515218-1-vincenzopalazzodev@gmail.com>
 <20230509211902.GA1270901@bhelgaas> <CAMdYzYp6=mYSoUHN3TEXVSMbRt1HpRm0X_4RMez09V0XzQewaw@mail.gmail.com>
 <CSIJZYWBC38N.2M99O6W1PLR4B@vincent-arch>
In-Reply-To: <CSIJZYWBC38N.2M99O6W1PLR4B@vincent-arch>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 10 May 2023 15:46:06 -0400
Message-ID: <CAMdYzYrPNwq7OC-_9PE18coO-y_NZuu9bAj4XX1r8q8Gy_EofA@mail.gmail.com>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
To: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, linux-pci@vger.kernel.org, robh@kernel.org, 
	heiko@sntech.de, kw@linux.com, shawn.lin@rock-chips.com, 
	linux-kernel@vger.kernel.org, lgirdwood@gmail.com, 
	linux-rockchip@lists.infradead.org, broonie@kernel.org, bhelgaas@google.com, 
	linux-kernel-mentees@lists.linuxfoundation.org, lpieralisi@kernel.org, 
	linux-arm-kernel@lists.infradead.org, Dan Johansen <strit@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_124624_774430_FA7D2E07 
X-CRM114-Status: GOOD (  46.32  )
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

T24gV2VkLCBNYXkgMTAsIDIwMjMgYXQgNzoxNuKAr0FNIFZpbmNlbnpvIFBhbGF6em8KPHZpbmNl
bnpvcGFsYXp6b2RldkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gPiBPbiBUdWUsIE1heSA5LCAyMDIz
IGF0IDU6MTnigK9QTSBCam9ybiBIZWxnYWFzIDxoZWxnYWFzQGtlcm5lbC5vcmc+IHdyb3RlOgo+
ID4gPgo+ID4gPiBIaSBWaW5jZW56bywKPiA+ID4KPiA+ID4gVGhhbmtzIGZvciByYWlzaW5nIHRo
aXMgaXNzdWUuICBMZXQncyBzZWUgd2hhdCB3ZSBjYW4gZG8gdG8gYWRkcmVzcwo+ID4gPiBpdC4K
PiA+ID4KPiA+ID4gT24gVHVlLCBNYXkgMDksIDIwMjMgYXQgMDU6Mzk6MTJQTSArMDIwMCwgVmlu
Y2Vuem8gUGFsYXp6byB3cm90ZToKPiA+ID4gPiBBZGQgYSBjb25maWd1cmFibGUgZGVsYXkgdG8g
dGhlIFJvY2tjaGlwIFBDSWUgZHJpdmVyIHRvIGFkZHJlc3MKPiA+ID4gPiBjcmFzaGVzIHRoYXQg
b2NjdXIgb24gc29tZSBvbGQgZGV2aWNlcywgc3VjaCBhcyB0aGUgUGluZTY0IFJvY2tQcm82NC4K
PiA+ID4gPgo+ID4gPiA+IFRoaXMgaXNzdWUgaXMgYWZmZWN0aW5nIHRoZSBBUk0gY29tbXVuaXR5
LCBidXQgdGhlcmUgaXMgbm8KPiA+ID4gPiB1cHN0cmVhbSBzb2x1dGlvbiBmb3IgaXQgeWV0Lgo+
ID4gPgo+ID4gPiBJdCBzb3VuZHMgbGlrZSB0aGlzIGhhcHBlbnMgd2l0aCBzZXZlcmFsIGVuZHBv
aW50cywgcmlnaHQ/ICBBbmQgSQo+ID4gPiBhc3N1bWUgdGhlIGVuZHBvaW50cyB3b3JrIGZpbmUg
aW4gb3RoZXIgbm9uLVJvY2tjaGlwIHN5c3RlbXM/ICBJZgo+ID4gPiB0aGF0J3MgdGhlIGNhc2Us
IG15IGd1ZXNzIGlzIHRoZSBwcm9ibGVtIGlzIHdpdGggdGhlIFJvY2tjaGlwIGhvc3QKPiA+ID4g
Y29udHJvbGxlciBhbmQgaG93IGl0J3MgaW5pdGlhbGl6ZWQsIG5vdCB3aXRoIHRoZSBlbmRwb2lu
dHMuCj4gPiA+Cj4gPiA+IFRoZSBvbmx5IGRlbGF5cyBhbmQgdGltZW91dHMgSSBzZWUgaW4gdGhl
IGRyaXZlciBub3cgYXJlIGluCj4gPiA+IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0X3BvcnQoKSwg
d2hlcmUgaXQgd2FpdHMgZm9yIGxpbmsgdHJhaW5pbmcgdG8KPiA+ID4gY29tcGxldGUuICBJIGFz
c3VtZSB0aGUgbGluayB0cmFpbmluZyBkaWQgY29tcGxldGVseSBzdWNjZXNzZnVsbHkKPiA+ID4g
c2luY2UgeW91IGRvbid0IG1lbnRpb24gZWl0aGVyIGEgZ2VuMSBvciBnZW4yIHRpbWVvdXQgKGFs
dGhvdWdoIHRoZQo+ID4gPiBnZW4yIG1lc3NhZ2UgaXMgYSBkZXZfZGJnKCkgdGhhdCBub3JtYWxs
eSB3b3VsZG4ndCBnbyB0byB0aGUgY29uc29sZSkuCj4gPiA+Cj4gPiA+IEkgZG9uJ3Qga25vdyB0
aGF0IHRoZSBzcGVjIGNvbnRhaW5zIGEgcmV0cmFpbiB0aW1lb3V0IHZhbHVlLiAgU2V2ZXJhbAo+
ID4gPiBvdGhlciBkcml2ZXJzIHVzZSAxIHNlY29uZCwgd2hpbGUgcm9ja2NoaXAgdXNlcyA1MDBt
cyAoZm9yIGV4YW1wbGUsCj4gPiA+IHNlZSBMSU5LX1JFVFJBSU5fVElNRU9VVCBhbmQgTElOS19V
UF9USU1FT1VUKS4KPiA+ID4KPiA+ID4gSSB0aGluayB3ZSBuZWVkIHRvIHVuZGVyc3RhbmQgdGhl
IGlzc3VlIGJldHRlciBiZWZvcmUgYWRkaW5nIGEgRFQKPiA+ID4gcHJvcGVydHkgYW5kIGEgbW9k
dWxlIHBhcmFtZXRlci4gIFRob3NlIGFyZSBoYXJkIGZvciB1c2VycyB0byBkZWFsCj4gPiA+IHdp
dGguICBJZiB3ZSBjYW4gZmlndXJlIG91dCBhIHZhbHVlIHRoYXQgd29ya3MgZm9yIGV2ZXJ5Ym9k
eSwgaXQgd291bGQKPiA+ID4gYmUgYmV0dGVyIHRvIGp1c3QgaGFyZC1jb2RlIGl0IGluIHRoZSBk
cml2ZXIgYW5kIHVzZSB0aGF0IGFsbCB0aGUKPiA+ID4gdGltZS4KPiA+Cj4gPiBHb29kIEV2ZW5p
bmcsCj4gPgo+ID4gVGhlIG1haW4gaXNzdWUgd2l0aCB0aGUgcmszMzk5IGlzIHRoZSBQQ0llIGNv
bnRyb2xsZXIgaXMgYnVnZ3kgYW5kCj4gPiB0cmlnZ2VycyBhIFNvQyBwYW5pYyB3aGVuIGNlcnRh
aW4gZXJyb3IgY29uZGl0aW9ucyBvY2N1ciB0aGF0IHNob3VsZAo+ID4gYmUgaGFuZGxlZCBncmFj
ZWZ1bGx5LiBPbmUgb2YgdGhvc2UgY29uZGl0aW9ucyBpcyB3aGVuIGFuIGVuZHBvaW50Cj4gPiBy
ZXF1ZXN0cyBhbiBhY2Nlc3MgdG8gd2FpdCBhbmQgcmV0cnkgbGF0ZXIuIE1hbnkgeWVhcnMgYWdv
IHdlIHJhbiB0aGF0Cj4gPiBpc3N1ZSB0byBncm91bmQgYW5kIHdpdGggUm9iaW4gTXVycGh5J3Mg
aGVscCB3ZSBmb3VuZCB0aGF0IHdoaWxlIGl0J3MKPiA+IHBvc3NpYmxlIHRvIGdyYWNlZnVsbHkg
aGFuZGxlIHRoYXQgY29uZGl0aW9uIGl0IHJlcXVpcmVkIGhpamFja2luZyB0aGUKPiA+IGVudGly
ZSBhcm02NCBlcnJvciBoYW5kbGluZyByb3V0aW5lLiBOb3QgZXhhY3RseSBzY2FsYWJsZSBmb3Ig
anVzdCBvbmUKPiA+IFNvQy4gVGhlIGNvbmZpZ3VyYWJsZSB3YWl0cyBhbGxvdyB1cyB0byBwcm9n
cmFtIHJlYXNvbmFibGUgdGltZXMgZm9yCj4gPiA5MCUgb2YgdGhlIGVuZHBvaW50cyB0aGF0IGNv
bWUgdXAgaW4gdGhlIG5vcm1hbCBhbW91bnQgb2YgdGltZSwgd2hpbGUKPiA+IGJlaW5nIGFibGUg
dG8gYWRqdXN0IGl0IGZvciB0aGUgb3RoZXIgMTAlIHRoYXQgZG8gbm90LiBTb21lIHJlcXVpcmUK
PiA+IG11bHRpcGxlIHNlY29uZHMgYmVmb3JlIHRoZXkgcmV0dXJuIHdpdGhvdXQgZXJyb3IuIFBh
cnQgb2YgdGhlIHJlYXNvbgo+ID4gd2UgZG9uJ3Qgd2FudCB0byBoYXJkY29kZSB0aGUgd2FpdCB0
aW1lIGlzIGJlY2F1c2UgdGhlIHByb2JlIGlzbid0Cj4gPiBoYW5kbGVkIGFzeW5jaHJvbm91c2x5
LCBzbyB0aGUga2VybmVsIGFwcGVhcnMgdG8gaGFuZyB3aGlsZSB3YWl0aW5nCj4gPiBmb3IgdGhl
IHRpbWVvdXQuCj4KPiBZZWFoLCBJIHNtZWxsIGEgaGFyZHdhcmUgYnVnIGluIG15IGNvZGUuIEkg
aGF0ZSB3YWl0aW5nIGluIHRoaXMgd2F5IGluc2lkZQo+IHRoZSBjb2RlLCBzbyBpdCdzIHVzdWFs
bHkgd3Jvbmcgd2hlbiB5b3UgbmVlZCB0byBkbyBzb21ldGhpbmcgbGlrZSB0aGF0LgoKQ29ycmVj
dCwgaXQncyB0aGUgdW5mb3J0dW5hdGUgd2F5IG9mIGFybTY0IGRldmVsb3BtZW50LiBBbG1vc3Qg
bm9uZSBvZgp0aGUgU29DcyBpbXBsZW1lbnQgYWxsIG9mIHRoZWlyIGhhcmR3YXJlIGluIGEgY29t
cGxldGVseSBzcGVjaWZpY2F0aW9uCmNvbXBsaWFudCB3YXkuCgo+Cj4gRHVyaW5nIG15IHJlc2Vh
cmNoLCBJIGFsc28gZm91bmQgdGhpcyBwYXRjaCAoaHR0cHM6Ly9idWd6aWxsYS5yZWRoYXQuY29t
L3Nob3dfYnVnLmNnaT9pZD0yMTM0MTc3KQo+IHRoYXQgcHJvdmlkZXMgYSBmaXggaW4gYW5vdGhl
ciBwb3NzaWJseSBjbGVhbmVyIHdheS4KPgo+IEJ1dCBJIGRvbid0IHVuZGVyc3RhbmQgdGhlIHJl
YXNvbmluZyBiZWhpbmQgaXQsIHNvIG1heWJlIEkKPiBoYXZlbid0IHNwZW50IGVub3VnaCB0aW1l
IHRoaW5raW5nIGFib3V0IGl0LgoKVGhhdCBpcyBhIGNvbXBsZXRlbHkgZGlmZmVyZW50IGlzc3Vl
LCB1bnJlbGF0ZWQgdG8gdGhlIFBDSSBjcmFzaC4KCj4KPiA+IEknbSBjdXJpb3VzIGlmIGl0J3Mg
YmVlbiB0ZXN0ZWQgd2l0aCB0aGlzIHNlcmllcyBvbiB0b3A6Cj4gPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzIwMjMwNDE4MDc0NzAwLjEwODM1MDUtOC1yaWNrLndl
cnRlbmJyb2VrQGdtYWlsLmNvbS9ULwo+ID4gSSdtIHBhcnRpY3VsYXJseSBjdXJpb3VzIGlmCj4g
PiBbdjUsMDQvMTFdIFBDSTogcm9ja2NoaXA6IEFkZCBwb2xsIGFuZCB0aW1lb3V0IHRvIHdhaXQg
Zm9yIFBIWSBQTExzIHRvIGJlIGxvY2tlZAo+ID4gbWFrZXMgYSBkaWZmZXJlbmNlIGluIHRoZSBi
ZWhhdmlvci4gUGxlYXNlIHRlc3QgdGhpcyBhbmQgc2VlIGlmIGl0Cj4gPiBpbXByb3ZlcyB0aGUg
dGltZW91dHMgeW91IG5lZWQgZm9yIHRoZSBlbmRwb2ludHMgeW91J3JlIHRlc3RpbmcKPiA+IGFn
YWluc3QuCj4KPiBNaCwgSSBjYW4gdHJ5IHRvIGNoZXJyeS1waWNrIHRoZSBjb21taXQgYW5kIHRl
c3QgaXQgaW4gbXkgb3duIHRlc3QgZW52aXJvbm1lbnQuIEN1cnJlbnRseSwgSSBoYXZlbid0IGJl
ZW4KPiBhYmxlIHRvIHRlc3QgaXQgZHVlIHRvIGEgbGFjayBvZiBoYXJkd2FyZSwgYnV0IEknbSBz
ZWVraW5nIGEgd2F5IHRvIG9idGFpbiBvbmUuCj4gTHVja2lseSwgSSBoYXZlIHNvbWVvbmUgb24g
dGhlIE1hbmphcm8gYXJtIHRlYW0gd2hvIGNhbiBoZWxwIG1lIHRlc3QgaXQsCj4gc28gSSdsbCB0
cnkgdG8gZG8gdGhhdC4KPgo+IENoZWVycyEKPgo+IFZpbmNlbnQuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
