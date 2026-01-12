Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B3F5D25056
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 08:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qhhPWHWKRiA2D+eC+OMXnk1U681KFAVsEPSrNMK0uUk=; b=AscXbRvhDe2weO
	ex4aNG/g8KQH4P27CvrFJKQGfRT2OfZQbohtdRJJJDIF5OecNjjSSEfmgb2PcBpI3rDDcpvZUChNJ
	b4mbSrqcwmfanF/Az/vAfNWTjI/cWycctMU6wnNL4KHg05lctIpfw8cNETg9mqLgnLz0OVHfv62Hz
	zF8DHMRQLKdTMTtY+Y6xI7/Zuv9sWTpPlpOvj96lji3rz85V7tRUPkbgckxd6hcH301yGD5W4KCs8
	edMUwg+9OM9jxxeaySprXuVj40KgLKa1s1mE8Y1cltyIzh8rA9NfAQQSfEPs6Gzc7VzYuKUDz1h9k
	euIyY9lR/SFID9Sa2YYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDkb-000000052dg-0dht;
	Mon, 12 Jan 2026 08:58:13 +0000
Received: from mail-m19731112.qiye.163.com ([220.197.31.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDkX-000000052cv-20r7;
	Mon, 12 Jan 2026 08:58:11 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30503549a;
	Mon, 12 Jan 2026 16:58:05 +0800 (GMT+08:00)
Message-ID: <a346ba30-43f1-4579-91e7-f10d2ccff039@rock-chips.com>
Date: Mon, 12 Jan 2026 16:58:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de,
 ulf.hansson@linaro.org, Marco Schirrmeister <mschirrmeister@gmail.com>
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com>
 <8536413c-8687-4d75-befb-8f25e54838bf@rock-chips.com>
 <c3ee063c-ca11-44e4-9e7d-3861a82db3ea@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <c3ee063c-ca11-44e4-9e7d-3861a82db3ea@rock-chips.com>
X-HM-Tid: 0a9bb16d3dad09cckunmbb41a1112d58c1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhodQlZPH0tDTRofTkJJSE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UhWoW7kYX66ut3wPXEqeaqrStdUT65OVLJVljFYrFzAtKSuAfDr5Nj5Jx+o9RG2o5GOl4ti7GN4rUCtv9n8sZNMrC6iuDoI1DHO1KJu0zH8PGgYwSODdl6HJjYMT8/xg3nI7FLlQCIaCKzIp69lC+lThQLXLDukwOmOG1kfdABM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=n0N5cpDzl2Io3llDYSRDqgK0DrphJVLWFS2vQbYLFZc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005810_041342_0E174CF3 
X-CRM114-Status: GOOD (  18.83  )
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

5ZyoIDIwMjYvMDEvMTIg5pif5pyf5LiAIDE2OjI5LCBDaGFveWkgQ2hlbiDlhpnpgZM6Cj4gSGkg
U2hhd24sCj4gCj4gT24gMS8xMi8yMDI2IDExOjU2IEFNLCBTaGF3biBMaW4gd3JvdGU6Cj4+IOWc
qCAyMDI2LzAxLzEyIOaYn+acn+S4gCA5OjMyLCBTaGF3biBMaW4g5YaZ6YGTOgo+Pj4g5ZyoIDIw
MjYvMDEvMTAg5pif5pyf5YWtIDk6MDcsIE1hcmNvIFNjaGlycm1laXN0ZXIg5YaZ6YGTOgo+Pj4+
IFRoaXMgc2VyaWVzIGFkZHJlc3NlcyBhIG1pY3JvU0Qgc3RhYmlsaXR5IGlzc3VlIG9uIHRoZSBG
cmllbmRseUVsZWMKPj4+PiBOYW5vUGkgUjc2UyAoUkszNTc2KS4gVGhlIGJvYXJkIGN1cnJlbnRs
eSBzdWZmZXJzIGZyb20gYSA0MDBrSHoKPj4+PiByZXR1bmluZyBsb29wIHdoZW4gdGhlIGNvbnRy
b2xsZXIgYXR0ZW1wdHMgdG8gZW50ZXIgcnVudGltZS1zdXNwZW5kCj4+Pj4gZHVyaW5nIGlkbGUg
cGVyaW9kcy4KPj4+Pgo+Pj4+IEV2aWRlbmNlIG9mIHRoZSBmYWlsdXJlIGluIGRtZXNnOgo+Pj4+
IFtGcmkgSmFuICAyIDAxOjI4OjAyIDIwMjZdIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVlZCAoc2xv
dCAwKSA9IDQwMDAwMEh6Cj4+Pj4gW0ZyaSBKYW4gIDIgMDE6Mjg6MDMgMjAyNl0gbW1jX2hvc3Qg
bW1jMTogQnVzIHNwZWVkIChzbG90IDApID0gMTk4MDAwMDAwSHoKPj4+PiBbRnJpIEphbiAgMiAw
MToyODowMyAyMDI2XSBkd21tY19yb2NrY2hpcCAyYTMxMDAwMC5tbWM6IFN1Y2Nlc3NmdWxseSB0
dW5lZCBwaGFzZSB0byAyMzMKPj4+PiBbRnJpIEphbiAgMiAwMToyODowNCAyMDI2XSBtbWNfaG9z
dCBtbWMxOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSA0MDAwMDBIego+Pj4+Cj4+Pgo+Pj4gRG9lcyB0
aGlzIHByb2JsZW0gaGFwcGVuIHdpdGggYWxsIG1pY3JvU0RzIG9yIGp1c3QgKmEqIG1pY3JvU0Qg
cGVyCj4+PiB5b3VyIGRlc2NyaXB0aW9uPwo+Pj4gSGF2ZSB5b3UgZXZlciB0cmllZCB0byBkaXNh
YmxlIFNEUjEwNCBzdXBwb3J0Pwo+Pj4KPj4KPj4gQSBxdWljayB1cGRhdGUuCj4+Cj4+IEkgZm91
bmQgc2V2ZXJhbCBwcm9ibGVtcyBvbiBSSzM1NzYgZm9yIHN1cHBvcnRpbmcgc2QgY2FyZHMuIEkg
d29uZGVyZWQKPj4gaG93IGFsbCB1cHN0cmVhbSBSSzM1NzYgYm9hcmRzIGNsYWltaW5nIFNEIHN1
cHBvcnQgd29yaz8gQW55d2F5LCBJIHNlbnQKPj4gYSBzZXJpZXMgdG8gdGhlIGxpc3RbMV0sIG5v
dCBzdXJlIGlmIGl0IGZpeGVzIHRoZSBwcm9ibGVtIHlvdSBmYWNlZCwgYnV0Cj4+IHRoZXNlIHNo
b3VsZCBiZSB0aGUgcmlnaHQgcGF0Y2hlcyB5b3Ugc2hvdWxkIGhhdmUgYSB0cnkuCj4+Cj4+Cj4+
IFsxXWh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzE3NjgxODk3NjgtOTYz
MzMtMS1naXQtc2VuZC1lbWFpbC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20vVC8jdAo+Pgo+IAo+
IEkgZW5jb3VudGVyZWQgYSBzaW1pbGFyIGlzc3VlIG9uIHRoZSBSSzM1NzYgRVZCMi4KPiAKPiBJ
dCBzZWVtcyB0aGF0IHRoZSBjZC1ncGlvcyBmZWF0dXJlIGFyZSBicm9rZW4sIHNvIFNEIGNhcmQg
ZXZlbnRzCgoKWWVzLCBjZC1ncGlvcyBtZXRob2QgZm9yIFJLMzU3NiBpcyBicm9rZW4gbm93LCBz
byB5b3UgbmVlZCB0byBhcHBseQpteSBmaXJzdCAyIGZpeCBwYXRjaGVzLgoKPiBjYW5ub3QgYmUg
ZGV0ZWN0ZWQuIEhvd2V2ZXIsIGlmIHRoZSBTRCBjYXJkIGlzIGluc2VydGVkIGJlZm9yZSBMaW51
eAo+IGJvb3RzLCBpdCBjYW4gYXQgbGVhc3Qgc3RhcnQgdXAuIEkgc3VzcGVjdCB0aGF0IG90aGVy
IGJvYXJkcyBtYXkgYmVoYXZlCj4gdGhlIHNhbWUgd2F5IDopCgpUaGlzIGlzIHRydWUsIGJlY2F1
c2UgLmdldF9jZCgpIHJldHVybnMgY2FyZCBwcmVzZW50IHdoZW4gYm9vdGluZyBmb3IKdGhlIGZp
cnN0IHRpbWUsIHlvdSB0aGUgb25seSB3YXkgZm9yIHVwc3RyZWFtIFJLMzU3NiBib2FyZHMgdG8g
dXNlIHNkIApjYXJkcyBpcyB0byBpbnNlcnQgdGhlIGNhcmQgYmVmb3JlIGJvb3RpbmcuIEJ1dCB0
aGVuIGhvdC1wbHVnIGNhc2Ugd2lsbApub3QgYWJsZSB0byB3b3JrLgoKPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
