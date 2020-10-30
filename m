Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB2B8C00A89
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 16:33:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7408320727
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 16:33:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="E1RGqg+p";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="Q6Oq90hl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7408320727
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y8/tDmkt0ZhMajw3w4otMTCP6Zg0dcp4UmLUjVtFQXY=; b=E1RGqg+pFVXurIYwpJ1CAU4LO
	Jkalbt9d8xV+M9qRDFmjEYqL+YRQpsd1JV2kymckANu+HTpZPN7SZW1aHiIqwBAl+1MaHAymhvQx8
	5MffFYX2HZUKgHDrIXkqmYZmtGLgCdm2PkTFm8M+fLpi3k3JRYg1RP5NBsg3YtB+IyNLMwOv4jJIV
	Y4pPsBWVMDCavRfBkKm7c2djny1qxSKKN3Jait9VVOKviPhmNJ0DH8yLh67dx0uNsj/ndU0dGcgaQ
	nx2HrUllCtoGt9ftFP38zyzGdtgwmySxjGBiwbFAG00fZ7TMUCu2Dymqa+og69JZ6dfYEzq5BBa0e
	jax9y77SQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYXKu-0002tE-Uu; Fri, 30 Oct 2020 16:33:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYWLr-0007IN-NM
 for linux-rockchip@merlin.infradead.org; Fri, 30 Oct 2020 15:30:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=kD8APc7ypUE2d56y5I4aUhhKTMdnXyAMV40wqIjmh3Q=; b=Q6Oq90hlTGSUAGU5uaIVg61jNm
 fbCMVmBZPu8Y6DvsB8Vv72Q6afcxy1qpf+XgeGnv43v8jBSkxdCri6QKKIArqDsC1JNtm757iui/f
 W6eZ1uv5HHF2NjQRbPNr/p7XClUvmW5Ct2GzEWozUyLxT7iQg2ut2FK0HdNUSB41tO+eeBV9I5lyI
 WEFNYE3GFR/ppdTC7B22dnJ6zDnBkviJfTZ4s+JMz8h86UoO7/EFgifByeCgbRVvLYbh694Vwdo0c
 qN2jDgwL6bCjlWDonvGePEZBkKXrz7u3jphFBTksOarLap1b7r0/kEChtEqS4QNuKK/blFEcl5RvY
 MR1Ah86w==;
Received: from regular1.263xmail.com ([211.150.70.197])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYWLk-0003PB-51
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 15:30:02 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id D1877C70;
 Fri, 30 Oct 2020 23:29:36 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.108] (unknown [112.49.232.236])
 by smtp.263.net (postfix) whith ESMTP id
 P28985T139935728264960S1604071774981132_; 
 Fri, 30 Oct 2020 23:29:36 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <077d3218468ce070673d67c2d21a4b6d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.232.236
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v4 8/8] doc: rockchip: Document Rockchip miniloader
 flashing
To: Jagan Teki <jagan@amarulasolutions.com>,
 philipp.tomsich@theobroma-systems.com, sjg@chromium.org
References: <20201028133348.241839-1-jagan@amarulasolutions.com>
 <20201028133348.241839-9-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <47fb2df0-4510-7f48-2417-2776518674c7@rock-chips.com>
Date: Fri, 30 Oct 2020 23:29:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201028133348.241839-9-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_152956_898752_5211D4A3 
X-CRM114-Status: GOOD (  20.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDIwMjAvMTAvMjgg5LiL5Y2IOTozMywgSmFnYW4gVGVraSB3cm90ZToKPiBUaGlzIHdvdWxk
IGJlIHVzZWZ1bCBhbmQgcmVjb21tZW5kZWQgYm9vdCBmbG93IGZvciBuZXcgYm9hcmRzCj4gd2hp
Y2ggaGFzIGRvZXNuJ3QgaGF2ZSB0aGUgRERSIHN1cHBvcnQgeWV0IGluIG1haW5saW5lLgo+Cj4g
U29tZXRpbWVzIGl0IGlzIHZlcnkgdXNlZnVsIGZvciBkZWJ1Z2dpbmcgbWFpbmxpbmUgRERSIHN1
cHBvcnQuCj4KPiBEb2N1bWVuIGl0IGZvciBweDMwIGJvb3QgZmxvdy4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTog
S2V2ZXIgWWFuZzxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4g
LS0tCj4gQ2hhbmdlcyBmb3IgdjQ6Cj4gLSBub25lCj4KPiAgIGRvYy9ib2FyZC9yb2NrY2hpcC9y
b2NrY2hpcC5yc3QgfCA0MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZG9jL2JvYXJkL3JvY2tjaGlwL3JvY2tjaGlwLnJzdCBiL2RvYy9ib2FyZC9yb2NrY2hp
cC9yb2NrY2hpcC5yc3QKPiBpbmRleCA4YzkyZGUwYzkyLi45NTVlNjg1OGYyIDEwMDY0NAo+IC0t
LSBhL2RvYy9ib2FyZC9yb2NrY2hpcC9yb2NrY2hpcC5yc3QKPiArKysgYi9kb2MvYm9hcmQvcm9j
a2NoaXAvcm9ja2NoaXAucnN0Cj4gQEAgLTEyMyw2ICsxMjMsOSBAQCBUbyBidWlsZCByazMzOTkg
Ym9hcmRzOjoKPiAgIEZsYXNoaW5nCj4gICAtLS0tLS0tLQo+ICAgCj4gKzEuIFBhY2thZ2UgdGhl
IGltYWdlIHdpdGggVS1Cb290IFRQTC9TUEwKPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPiArCj4gICBTRCBDYXJkCj4gICBeXl5eXl5eCj4gICAKPiBAQCAtMTg3
LDYgKzE5MCwzOSBAQCBDb3B5IFNQSSBib290IGltYWdlcyBpbnRvIFNEIGNhcmQgYW5kIGJvb3Qg
ZnJvbSBTRDo6Cj4gICAgICAgICAgIHNmIGVyYXNlIDB4NjAwMDAgKyRmaWxlc2l6ZQo+ICAgICAg
ICAgICBzZiB3cml0ZSAka2VybmVsX2FkZHJfciAweDYwMDAwICR7ZmlsZXNpemV9Cj4gICAKPiAr
Mi4gUGFja2FnZSB0aGUgaW1hZ2Ugd2l0aCBSb2NrY2hpcCBtaW5pbG9hZGVyCj4gKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICsKPiArSW1hZ2UgcGFja2Fn
ZSB3aXRoIFJvY2tjaGlwIG1pbmlsb2FkZXIgcmVxdWlyZXMgcm9iaW4gWzFdLgo+ICsKPiArQ3Jl
YXRlIGlkYmxvYWRlci5pbWcKPiArCj4gKy4uIGNvZGUtYmxvY2s6OiBub25lCj4gKwo+ICsgIGNk
IHUtYm9vdAo+ICsgIC4vdG9vbHMvbWtpbWFnZSAtbiBweDMwIC1UIHJrc2QgLWQgcmtiaW4vYmlu
L3JrMzMvcHgzMF9kZHJfMzMzTUh6X3YxLjE1LmJpbiBpZGJsb2FkZXIuaW1nCj4gKyAgY2F0IHJr
YmluL2Jpbi9yazMzL3B4MzBfbWluaWxvYWRlcl92MS4yMi5iaW4gPj4gaWRibG9hZGVyLmltZwo+
ICsgIHN1ZG8gZGQgaWY9aWRibG9hZGVyLmltZyBvZj0vZGV2L3NkYSBzZWVrPTY0Cj4gKwo+ICtD
cmVhdGUgdHJ1c3QuaW1nCj4gKwo+ICsuLiBjb2RlLWJsb2NrOjogbm9uZQo+ICsKPiArICBjZCBy
a2Jpbgo+ICsgIC4vdG9vbHMvdHJ1c3RfbWVyZ2VyIFJLVFJVU1QvUFgzMFRSVVNULmluaQo+ICsg
IHN1ZG8gZGQgaWY9dHJ1c3QuaW1nIG9mPS9kZXYvc2RhIHNlZWs9MjQ1NzYKPiArCj4gK0NyZWF0
ZSB1Ym9vdC5pbWcKPiArCj4gKy4uIGNvZGUtYmxvY2s6OiBub25lCj4gKwo+ICsgIHJiaW5rL3Rv
b2xzL2xvYWRlcmltYWdlIC0tcGFjayAtLXVib290IHUtYm9vdC1kdGIuYmluIHVib290LmltZyAw
eDIwMDAwMAo+ICsgIHN1ZG8gZGQgaWY9dWJvb3QuaW1nIG9mPS9kZXYvc2RhIHNlZWs9MTYzODQK
PiArCj4gK05vdGU6Cj4gKzEuIDB4MjAwMDAwIGlzIGxvYWQgYWRkcmVzcyBhbmQgaXQncyBhbiBv
cHRpb25hbCBpbiBzb21lIHBsYXRmb3Jtcy4KPiArMi4gcmtiaW4gYmluYXJpZXMgYXJlIGtlcHQg
b24gdXBkYXRpbmcsIHNvIHdvdWxkIHJlY29tbWVuZCB0byB1c2UgdGhlIGxhdGVzdCB2ZXJzaW9u
cy4KPiArCj4gICBUT0RPCj4gICAtLS0tCj4gICAKPiBAQCAtMTk1LDUgKzIzMSw3IEBAIFRPRE8K
PiAgIC0gRG9jdW1lbnQgU1BJIGZsYXNoIGJvb3QKPiAgIC0gQWRkIG1pc3NpbmcgU29DJ3Mgd2l0
aCBpdCBib2FyZHMgbGlzdAo+ICAgCj4gK1sxXSBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAt
bGludXgvcmtiaW4KPiArCj4gICAuLiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25z
LmNvbT4KPiAtLi4gVHVlc2RheSAwMiBKdW5lIDIwMjAgMTI6MTg6NTcgQU0gSVNUCj4gKy4uIFdl
ZG5lc2RheSAyOCBPY3RvYmVyIDIwMjAgMDY6NDc6MjYgUE0gSVNUCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
