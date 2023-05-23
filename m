Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7BE9C7EE26
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 17:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vHHnTBG6Zf9R6Xa8EbO0S3AIowLnQ/pPOkLYWZZiFKI=; b=baGNWxFl+RF3ew91L4uXg+jgJP
	iitrdaQN/bcYWdfC+X7sbvPojeCr780bx9tlwryJKYFCEkCBrVmdnOQQwHy/mql0J1MLWNH97aGo7
	pZkoXomUCkdcbBre0L8h2Ae5bfBIdJ2xI6hcy2QQv8qMjNAa/4R0/WElK1VYi7v7ynQviPtWKbYvM
	fBBuQq+N7z9+v+UGU5jy+KNDwdwTDpXOGxOGRTTxuDJUsKM2z9v0BDmOtXUPCUEI/G4OSZB7tvtqS
	fSOjPJcLrO+jjLFOyAOoNeDPk5mhJ0YJNL31Eu9n58Sxnpm+JvL8yvBvcL3s+I1itU1I2rms5Ilfd
	3HEbzTUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1VwH-00AzVq-1S;
	Tue, 23 May 2023 17:36:49 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1VwE-00AzUs-1c
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 17:36:48 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f13c41c957so20623e87.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 May 2023 10:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20221208.gappssmtp.com; s=20221208; t=1684863404; x=1687455404;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3yXKkNvbD+E6srtcqBKqjjdVLMr+2MZVea2zCLfMe8=;
        b=0r7HQVPZQmFhLAOKLplvY2wNgS/qAl+m6CmzaeCRaGTsClDItlrQyP51RPTo4XW+CI
         SIPPMwdA9ljVRqJPjS1xxUXHWbsCdlqdKOulKgksVwE0P8J8U26YAuNBWtXyKck8Nx05
         os5HJkcaDEATwKU3d/v/yV2BJiHLxcJkascIhUOYf5TjIEk2fhbRBAx2SpHej/PJF5z1
         bmAg6yInYVQh9+4Uk5i62YV/UA3hNBwPdFqGbxQlbm6QdbxL8dzTHF1yZ12tHXyIoSOp
         e8fsAuR7HQXSYf1/6G1j4Zh6eybCoB3WQh9Rs7iZyafyCQIGrqRLr+fCkZadRt2iL1mq
         5E3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684863404; x=1687455404;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a3yXKkNvbD+E6srtcqBKqjjdVLMr+2MZVea2zCLfMe8=;
        b=UNmC61xvCIyfRlodEu7bvNgNJC/m55Sl5kPgW/rKUzZaoavDTZ/84x2yENtQMTkoB9
         jqniDJd/z2J9P4gWPUwrmrXkLlMkyWRX7UyLtgNQ+RtAVqc7RAcqnkp6uFS9GJgRjFeP
         MzMa+Ugiko0MouZGwT7v6HHUpyktDgHjFhvhkKk5Ai2uitHJ1om4ruP0tlWWqx3EBt2l
         8sHR4/iWBuX6CyNFnSyM82ftCTDKr3lyQVYs0lq288meAC+vJI0SvVDgSFe56vo6GZqV
         80nsbGsCvSfcf2b1Q+xwsfVEPEx/K0kJA703LwGdCcR6vaL90DU6VuATuqNpuGI5+p+J
         r6ow==
X-Gm-Message-State: AC+VfDxJN7xqlBkc1uDyDscxe89PJgom5g021Wqyrhm7LDPyIsGYfjTz
	LGI1719AZfea+FNuK0ud2evWlf8OxKcLaTJ/72mnwA==
X-Google-Smtp-Source: ACHHUZ45tDHeXtcr5cUrhHtCcVJ0bxNdoTLxFJA1Tm0vWWWfOdwjrl8bJobJMQ/GXB0uy9MPfYlNokGme7HBr2WnkPs=
X-Received: by 2002:a19:f61a:0:b0:4f3:8267:a2f3 with SMTP id
 x26-20020a19f61a000000b004f38267a2f3mr4796279lfe.0.1684863404435; Tue, 23 May
 2023 10:36:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230523162515.993862-1-benjamin.gaignard@collabora.com>
 <c034db29-b664-793d-35e0-406fdfe2b145@collabora.com> <20230523170637.GE9943@pengutronix.de>
In-Reply-To: <20230523170637.GE9943@pengutronix.de>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 23 May 2023 14:36:32 -0300
Message-ID: <CAAEAJfAG_Z_tW8_LzgL7D+tGFYRhyJz3n0uy0gZiOkMnz6FOGA@mail.gmail.com>
Subject: Re: [PATCH] media: verisilicon: Additional fix for the crash when
 opening the driver
To: Michael Tretter <m.tretter@pengutronix.de>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, ezequiel@vanguardiasur.com.ar, 
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org, 
	m.szyprowski@samsung.com, didi.debian@cknow.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, hverkuil-cisco@xs4all.nl, kernel@pengutronix.de, 
	regressions@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_103646_746706_B9541E85 
X-CRM114-Status: GOOD (  27.87  )
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

SGkgZ3V5cywKCkFmdGVyIHJldmlld2luZyB0aGUgZm9ybWF0IGxvZ2ljIChoYW50cm9fcmVzZXRf
ZW5jb2RlZF9mbXQgYW5kCmhhbnRyb19yZXNldF9yYXdfZm10KS4KSXQgc2VlbXMgdG8gbWUgdHJ5
aW5nIHRvIHN1cHBvcnQgRGVjb2RlcnMsIEVuY29kZXJzIGFuZCBzbyBtYW55CmRpZmZlcmVudCBT
b0MgVmFyaWFudHMsIGlzIGdldHRpbmcgaW5jcmVhc2luZ2x5IGZyYWdpbGUuClRoaXMgZHJpdmVy
IGlzIGJlY29taW5nIGEgYmlnIGZhdCBtb25vbGl0aC4gUmVncmVzc2lvbnMgbGlrZSB0aGlzIHdp
bGwKYmUgaW5jcmVhc2luZ2x5IGZyZXF1ZW50LgoKVGhlIG9ubHkgY29kZWMgdGhhdCBzdXBwb3J0
cyBlbmNvZGluZyByaWdodCBub3cgaXMgSlBFRywgc28gSSB0aGluawppdCdzIGEgZ29vZCBpZGVh
IHRvIHJlbW92ZSBpdCBmb3IgZ29vZCwKYW5kIHNwbGl0IGl0IHRvIGl0cyBvd24gZHJpdmVyLgoK
QW55b25lIHZvbHVudGVlcmluZz8gOi0pCgpUaGFua3MsCkV6ZXF1aWVsCgpPbiBUdWUsIE1heSAy
MywgMjAyMyBhdCAyOjA24oCvUE0gTWljaGFlbCBUcmV0dGVyCjxtLnRyZXR0ZXJAcGVuZ3V0cm9u
aXguZGU+IHdyb3RlOgo+Cj4gT24gVHVlLCAyMyBNYXkgMjAyMyAxODozNjowOSArMDIwMCwgQmVu
amFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPgo+ID4gTGUgMjMvMDUvMjAyMyDDoCAxODoyNSwgQmVu
amFtaW4gR2FpZ25hcmQgYSDDqWNyaXQgOgo+ID4gPiBUaGlzIGZpeGVzIHRoZSBmb2xsb3dpbmcg
aXNzdWUgb2JzZXJ2ZWQgb24gT2Ryb2lkLU0xIGJvYXJkOgo+ID4gPgo+ID4gPiAgIFVuYWJsZSB0
byBoYW5kbGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBhdCB2aXJ0dWFsIGFkZHJl
c3MgMDAwMDAwMDAwMDAwMDAwOAo+ID4gPiAgIE1lbSBhYm9ydCBpbmZvOgo+ID4gPiAgIC4uLgo+
ID4gPiAgIE1vZHVsZXMgbGlua2VkIGluOiBjcmN0MTBkaWZfY2UgaGFudHJvX3ZwdSBzbmRfc29j
X3NpbXBsZV9jYXJkIHNuZF9zb2Nfc2ltcGxlX2NhcmRfdXRpbHMgdjRsMl92cDkgdjRsMl9oMjY0
IHJvY2tjaGlwX3NhcmFkYyB2NGwyX21lbTJtZW0gdmlkZW9idWYyX2RtYV9jb250aWcgdmlkZW9i
dWYyX21lbW9wcyBydGNfcms4MDggdmlkZW9idWYyX3Y0bDIgaW5kdXN0cmlhbGlvX3RyaWdnZXJl
ZF9idWZmZXIgcm9ja2NoaXBfdGhlcm1hbCBkd21hY19yayBzdG1tYWNfcGxhdGZvcm0gc3RtbWFj
IHZpZGVvZGV2IGtmaWZvX2J1ZiBkaXNwbGF5X2Nvbm5lY3RvciB2aWRlb2J1ZjJfY29tbW9uIHBj
c194cGNzIG1jIHJvY2tjaGlwZHJtIGFuYWxvZ2l4X2RwIGR3X21pcGlfZHNpIGR3X2hkbWkgZHJt
X2Rpc3BsYXlfaGVscGVyIHBhbmZyb3N0IGRybV9zaG1lbV9oZWxwZXIgZ3B1X3NjaGVkIGlwX3Rh
YmxlcyB4X3RhYmxlcyBpcHY2Cj4gPiA+ICAgQ1BVOiAzIFBJRDogMTc2IENvbW06IHY0bF9pZCBO
b3QgdGFpbnRlZCA2LjMuMC1yYzctbmV4dC0yMDIzMDQyMCAjMTM0ODEKPiA+ID4gICBIYXJkd2Fy
ZSBuYW1lOiBIYXJka2VybmVsIE9EUk9JRC1NMSAoRFQpCj4gPiA+ICAgcHN0YXRlOiA2MDQwMDAw
OSAoblpDdiBkYWlmICtQQU4gLVVBTyAtVENPIC1ESVQgLVNTQlMgQlRZUEU9LS0pCj4gPiA+ICAg
cGMgOiBoYW50cm9fdHJ5X2ZtdCsweGEwLzB4Mjc4IFtoYW50cm9fdnB1XQo+ID4gPiAgIGxyIDog
aGFudHJvX3RyeV9mbXQrMHg5NC8weDI3OCBbaGFudHJvX3ZwdV0KPiA+ID4gICAuLi4KPiA+ID4g
ICBDYWxsIHRyYWNlOgo+ID4gPiAgICBoYW50cm9fdHJ5X2ZtdCsweGEwLzB4Mjc4IFtoYW50cm9f
dnB1XQo+ID4gPiAgICBoYW50cm9fc2V0X2ZtdF9vdXQrMHgzYy8weDI5OCBbaGFudHJvX3ZwdV0K
PiA+ID4gICAgaGFudHJvX3Jlc2V0X3Jhd19mbXQrMHg5OC8weDEyOCBbaGFudHJvX3ZwdV0KPiA+
ID4gICAgaGFudHJvX3NldF9mbXRfY2FwKzB4MjQwLzB4MjU0IFtoYW50cm9fdnB1XQo+ID4gPiAg
ICBoYW50cm9fcmVzZXRfZW5jb2RlZF9mbXQrMHg5NC8weGNjIFtoYW50cm9fdnB1XQo+ID4gPiAg
ICBoYW50cm9fcmVzZXRfZm10cysweDE4LzB4MzggW2hhbnRyb192cHVdCj4gPiA+ICAgIGhhbnRy
b19vcGVuKzB4ZDQvMHgyMGMgW2hhbnRyb192cHVdCj4gPiA+ICAgIHY0bDJfb3BlbisweDgwLzB4
MTIwIFt2aWRlb2Rldl0KPiA+ID4gICAgY2hyZGV2X29wZW4rMHhjMC8weDIyYwo+ID4gPiAgICBk
b19kZW50cnlfb3BlbisweDEzYy8weDQ4Ywo+ID4gPiAgICB2ZnNfb3BlbisweDJjLzB4MzgKPiA+
ID4gICAgcGF0aF9vcGVuYXQrMHg1NTAvMHg5MzQKPiA+ID4gICAgZG9fZmlscF9vcGVuKzB4ODAv
MHgxMmMKPiA+ID4gICAgZG9fc3lzX29wZW5hdDIrMHhiNC8weDE2OAo+ID4gPiAgICBfX2FybTY0
X3N5c19vcGVuYXQrMHg2NC8weGFjCj4gPiA+ICAgIGludm9rZV9zeXNjYWxsKzB4NDgvMHgxMTQK
PiA+ID4gICAgZWwwX3N2Y19jb21tb24rMHgxMDAvMHgxMjAKPiA+ID4gICAgZG9fZWwwX3N2Yysw
eDNjLzB4YTgKPiA+ID4gICAgZWwwX3N2YysweDQwLzB4YTgKPiA+ID4gICAgZWwwdF82NF9zeW5j
X2hhbmRsZXIrMHhiOC8weGJjCj4gPiA+ICAgIGVsMHRfNjRfc3luYysweDE5MC8weDE5NAo+ID4g
PiAgIENvZGU6IDk3ZmM4YTdmIGY5NDBhYTgwIDUyODY0YTYxIDcyYTY4NmMxIChiOTQwMDgwMCkK
PiA+ID4gICAtLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAwIF0tLS0KPiA+ID4KPiA+ID4g
Rml4ZXM6IGRiNmY2OGI1MWU1YyAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogRG8gbm90IHNldCBjb250
ZXh0IHNyYy9kc3QgZm9ybWF0cyBpbiByZXNldCBmdW5jdGlvbnMiKQo+Cj4gVGhpcyBwYXRjaCBw
YXJ0aWFsbHkgcmV2ZXJ0cyB0aGUgcHJldmlvdXMgY29tbWl0LiBJIHdvbmRlciB3aGV0aGVyIHRo
ZSByZWFzb24KPiBmb3IgcmVzZXR0aW5nIHRoZSBjb250ZXh0IGZvcm1hdCBvbmx5IGlmIHRoZSB0
YXJnZXRlZCBxdWV1ZSBpcyBub3QgYnVzeSBzdGlsbAo+IHN0YW5kcy4KPgo+ID4gPgo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFi
b3JhLmNvbT4KPgo+IFRlc3RlZC1ieTogTWljaGFlbCBUcmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0
cm9uaXguZGU+Cj4KPiA+ID4gLS0tCj4gPgo+ID4gRGllZGVyaWNrLCBNYXJlaywgTWljaGFlbCwK
PiA+IEkgaGF2ZSB0ZXN0ZWQgdGhpcyBwYXRjaCBvbiBteSBib2FyZHMgYW5kIEkgc2VlIG5vIHJl
Z3Jlc3Npb25zIG9uCj4gPiBkZWNvZGVyIHBhcnQgYW5kIG5vIG1vcmUgY3Jhc2ggd2hlbiBwcm9i
aW5nIHRoZSBlbmNvZGVyLgo+ID4gQ291bGQgeW91IHRlc3QgaXQgb24geW91ciBzaWRlIHRvIGNv
bmZpcm0gaXQgaXMgb2sgPwo+ID4KPiA+IFRob3JzdGVuLCBJIHRyeS90ZXN0IHJlZ3pib3QgY29t
bWFuZHMsIHBsZWFzZSB0ZWxsIG1lIGlmIGl0IGlzIGNvcnJlY3QuCj4gPgo+ID4gI3JlZ3pib3Qg
XmludHJvZHVjZWQgZGI2ZjY4YjUxZTVjCj4gPiAjcmVnemJvdCB0aXRsZSBtZWRpYTogdmVyaXNp
bGljb246IG51bGwgcG9pbnRlciBkZXJlZmVyZW5jZSBpbiB0cnlfZm10Cj4gPiAjcmVnemJvdCBp
Z25vcmUtYWN0aXZpdHkKPiA+Cj4gPgo+ID4gPiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX3Y0bDIuYyB8IDYgKysrKy0tCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+ID4gPiBpbmRleCA4
MzU1MTg1MzRlM2IuLjYxY2ZhYWY0ZTkyNyAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+ID4gPiBAQCAtMzk3LDEw
ICszOTcsMTIgQEAgaGFudHJvX3Jlc2V0X3Jhd19mbXQoc3RydWN0IGhhbnRyb19jdHggKmN0eCwg
aW50IGJpdF9kZXB0aCkKPiA+ID4gICAgIGlmICghcmF3X3ZwdV9mbXQpCj4gPiA+ICAgICAgICAg
ICAgIHJldHVybiAtRUlOVkFMOwo+ID4gPiAtICAgaWYgKGN0eC0+aXNfZW5jb2RlcikKPiA+ID4g
KyAgIGlmIChjdHgtPmlzX2VuY29kZXIpIHsKPiA+ID4gICAgICAgICAgICAgZW5jb2RlZF9mbXQg
PSAmY3R4LT5kc3RfZm10Owo+ID4gPiAtICAgZWxzZQo+ID4gPiArICAgICAgICAgICBjdHgtPnZw
dV9zcmNfZm10ID0gcmF3X3ZwdV9mbXQ7Cj4gPiA+ICsgICB9IGVsc2Ugewo+ID4gPiAgICAgICAg
ICAgICBlbmNvZGVkX2ZtdCA9ICZjdHgtPnNyY19mbXQ7Cj4gPiA+ICsgICB9Cj4gPiA+ICAgICBo
YW50cm9fcmVzZXRfZm10KCZyYXdfZm10LCByYXdfdnB1X2ZtdCk7Cj4gPiA+ICAgICByYXdfZm10
LndpZHRoID0gZW5jb2RlZF9mbXQtPndpZHRoOwo+ID4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
