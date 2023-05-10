Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84406C77B7D
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 May 2023 20:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=93AuJrgWQCgRMG9uUJSgL1+mdyfH5CweMx0N4m4s1lM=; b=PAnSdFkBe9sZ7f
	F+LWWxr/GfU3A1Pi+ni/rGXmnGVLU0LXeWM99hjbK6E3xGqXx4vRF/RCmiHINW5rUZgaswylHNZLy
	rMuGyn/89SpYEbAQmxWvevMFACPy+h/oZOV3M21wgpLiYMWGWtXbGEG4nRkOXy+RL6n/3P/hQOCe6
	A7NRkgoNK+fQJ8xSDor4doI2EE8aYuLE+GV2jscZGoa16QBq6D/gcKbg0UpNl1J7YLW1yzZ+8YgDT
	ZklBgxzmxbi0Hlr3jSwkyJnjyinbnfMhb7frX/TS/+Ep7vCjArzDc8v+B0gTMXzk0wkHX/H5Ne6UH
	B9zTXiGXxK7y9hNvbY9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwqjE-006yWA-2N;
	Wed, 10 May 2023 20:48:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwqjB-006yVX-1B;
	Wed, 10 May 2023 20:48:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9186F63F0E;
	Wed, 10 May 2023 20:48:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8B46C433D2;
	Wed, 10 May 2023 20:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683751680;
	bh=p1v9BgVQxNA6CFzcqYCk9q5zJL82xRDoaqm5OkM6CLg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=jWrc2Fp4/sCVBp6UHKhYlkrY8SgsyIV1wgvS1fT/r2/D0jxYgQ0LsGjy8CTO+dRSV
	 MeUtgW5MbckP8PH4JKRXRc2HjkiksoEE+2fvebpIt2/1WRl8MWeoLKYXwK2XbGJ8eq
	 h3Vd9/7EDn8otCnP42jgnCokGb7J0bGy4j4y7UzVVQliiTs67fxCcRGNhGh/BNxwuv
	 jj7lz8nAhxCjQ7EwG34CFIavsuOrEysWMXjda8d/QAscgTcZ7z6olL/VpTZgyK8CNG
	 oMqpOAQC2uHVa5owxMaThE5Yj2W2Ph8LeLMN4Ksy4njspZ996Tb4XTOdzB6x2YbGQ+
	 1jzhTYmToHSdA==
Date: Wed, 10 May 2023 15:47:58 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>,
	linux-pci@vger.kernel.org, robh@kernel.org, heiko@sntech.de,
	kw@linux.com, shawn.lin@rock-chips.com,
	linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
	linux-rockchip@lists.infradead.org, broonie@kernel.org,
	bhelgaas@google.com, linux-kernel-mentees@lists.linuxfoundation.org,
	lpieralisi@kernel.org, linux-arm-kernel@lists.infradead.org,
	Dan Johansen <strit@manjaro.org>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
Message-ID: <ZFwC/seTfSoaLn0v@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYp6=mYSoUHN3TEXVSMbRt1HpRm0X_4RMez09V0XzQewaw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_134801_459605_3A368291 
X-CRM114-Status: GOOD (  29.00  )
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

T24gVHVlLCBNYXkgMDksIDIwMjMgYXQgMDg6MTE6MjlQTSAtMDQwMCwgUGV0ZXIgR2VpcyB3cm90
ZToKPiBPbiBUdWUsIE1heSA5LCAyMDIzIGF0IDU6MTnigK9QTSBCam9ybiBIZWxnYWFzIDxoZWxn
YWFzQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gT24gVHVlLCBNYXkgMDksIDIwMjMgYXQgMDU6Mzk6
MTJQTSArMDIwMCwgVmluY2Vuem8gUGFsYXp6byB3cm90ZToKPiA+ID4gQWRkIGEgY29uZmlndXJh
YmxlIGRlbGF5IHRvIHRoZSBSb2NrY2hpcCBQQ0llIGRyaXZlciB0byBhZGRyZXNzCj4gPiA+IGNy
YXNoZXMgdGhhdCBvY2N1ciBvbiBzb21lIG9sZCBkZXZpY2VzLCBzdWNoIGFzIHRoZSBQaW5lNjQg
Um9ja1BybzY0Lgo+ID4gPgo+ID4gPiBUaGlzIGlzc3VlIGlzIGFmZmVjdGluZyB0aGUgQVJNIGNv
bW11bml0eSwgYnV0IHRoZXJlIGlzIG5vCj4gPiA+IHVwc3RyZWFtIHNvbHV0aW9uIGZvciBpdCB5
ZXQuCj4gPgo+ID4gSXQgc291bmRzIGxpa2UgdGhpcyBoYXBwZW5zIHdpdGggc2V2ZXJhbCBlbmRw
b2ludHMsIHJpZ2h0PyAgQW5kIEkKPiA+IGFzc3VtZSB0aGUgZW5kcG9pbnRzIHdvcmsgZmluZSBp
biBvdGhlciBub24tUm9ja2NoaXAgc3lzdGVtcz8gIElmCj4gPiB0aGF0J3MgdGhlIGNhc2UsIG15
IGd1ZXNzIGlzIHRoZSBwcm9ibGVtIGlzIHdpdGggdGhlIFJvY2tjaGlwIGhvc3QKPiA+IGNvbnRy
b2xsZXIgYW5kIGhvdyBpdCdzIGluaXRpYWxpemVkLCBub3Qgd2l0aCB0aGUgZW5kcG9pbnRzLgo+
ID4gLi4uCgo+IFRoZSBtYWluIGlzc3VlIHdpdGggdGhlIHJrMzM5OSBpcyB0aGUgUENJZSBjb250
cm9sbGVyIGlzIGJ1Z2d5IGFuZAo+IHRyaWdnZXJzIGEgU29DIHBhbmljIHdoZW4gY2VydGFpbiBl
cnJvciBjb25kaXRpb25zIG9jY3VyIHRoYXQgc2hvdWxkCj4gYmUgaGFuZGxlZCBncmFjZWZ1bGx5
LiBPbmUgb2YgdGhvc2UgY29uZGl0aW9ucyBpcyB3aGVuIGFuIGVuZHBvaW50Cj4gcmVxdWVzdHMg
YW4gYWNjZXNzIHRvIHdhaXQgYW5kIHJldHJ5IGxhdGVyLgoKSSBhc3N1bWUgdGhpcyByZWZlcnMg
dG8gYSBDb21wbGV0aW9uIHdpdGggUmVxdWVzdCBSZXRyeSBTdGF0dXMgKFJSUyk/Cgo+IE1hbnkg
eWVhcnMgYWdvIHdlIHJhbiB0aGF0IGlzc3VlIHRvIGdyb3VuZCBhbmQgd2l0aCBSb2JpbiBNdXJw
aHkncwo+IGhlbHAgd2UgZm91bmQgdGhhdCB3aGlsZSBpdCdzIHBvc3NpYmxlIHRvIGdyYWNlZnVs
bHkgaGFuZGxlIHRoYXQKPiBjb25kaXRpb24gaXQgcmVxdWlyZWQgaGlqYWNraW5nIHRoZSBlbnRp
cmUgYXJtNjQgZXJyb3IgaGFuZGxpbmcKPiByb3V0aW5lLiBOb3QgZXhhY3RseSBzY2FsYWJsZSBm
b3IganVzdCBvbmUgU29DLgoKRG8geW91IGhhdmUgYSBwb2ludGVyIHRvIHRoYXQgZGlzY3Vzc2lv
bj8gIFRoZSBVUkwgbWlnaHQgc2F2ZQpyZXBlYXRpbmcgdGhlIHdob2xlIGV4ZXJjaXNlIGFuZCBj
b3VsZCBiZSB1c2VmdWwgZm9yIHRoZSBjb21taXQgbG9nCndoZW4gd2UgdHJ5IHRvIHJlc29sdmUg
dGhpcy4KCj4gVGhlIGNvbmZpZ3VyYWJsZSB3YWl0cyBhbGxvdyB1cyB0byBwcm9ncmFtIHJlYXNv
bmFibGUgdGltZXMgZm9yCj4gOTAlIG9mIHRoZSBlbmRwb2ludHMgdGhhdCBjb21lIHVwIGluIHRo
ZSBub3JtYWwgYW1vdW50IG9mIHRpbWUsIHdoaWxlCj4gYmVpbmcgYWJsZSB0byBhZGp1c3QgaXQg
Zm9yIHRoZSBvdGhlciAxMCUgdGhhdCBkbyBub3QuIFNvbWUgcmVxdWlyZQo+IG11bHRpcGxlIHNl
Y29uZHMgYmVmb3JlIHRoZXkgcmV0dXJuIHdpdGhvdXQgZXJyb3IuIFBhcnQgb2YgdGhlIHJlYXNv
bgo+IHdlIGRvbid0IHdhbnQgdG8gaGFyZGNvZGUgdGhlIHdhaXQgdGltZSBpcyBiZWNhdXNlIHRo
ZSBwcm9iZSBpc24ndAo+IGhhbmRsZWQgYXN5bmNocm9ub3VzbHksIHNvIHRoZSBrZXJuZWwgYXBw
ZWFycyB0byBoYW5nIHdoaWxlIHdhaXRpbmcKPiBmb3IgdGhlIHRpbWVvdXQuCgpJcyB0aGVyZSBz
b21lIHdheSBmb3IgdXNlcnMgdG8gZmlndXJlIG91dCB0aGF0IHRoZXkgd291bGQgbmVlZCB0aGlz
CnByb3BlcnR5PyAgT3IgaXMgaXQganVzdCAiaWYgeW91ciBrZXJuZWwgcGFuaWNzIG9uIGJvb3Qs
IHRyeQphZGRpbmcgb3IgaW5jcmVhc2luZyAiYnVzLXNjYW4tZGVsYXktbXMiIGluIHlvdXIgRFQ/
CgpCam9ybgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
