Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE57606A321
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 01:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DB2hoxee;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=ge7N/YRv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XTr4vWNBCbq1va4+wh3SnYLfES44SLQsw7YsPHLnyok=; b=DB2hoxeeIq1DIhNmraS14N1AWM
	PFJ3mtJ0PAQ4gudFYJkAhm3hdpQMnl7sJkPfsHitZka2Ow9XdqpL5GOLUB60o+VCo1q6i7Mvr3+vx
	JV3eGh9dkCxdaxxRzdAKI0JVu+HkJk5kt3HG5rg+sINwjgfIUjJvJKT5SpXxbukY8mL1XvTwOD8Q6
	rLvxJwpFSo77Hq+VI8ycGDr6Y/thwxfosTgaNwwJTPqL1+FXsA1tktKUotLvUeSc3F31C0JkTI6j0
	hgJlIkQKjF/5tPE0a7QCbbv3yMe+DzUO/NPesCjDQsrQcXqZzYnR4MnGdz5rX4GANUnegFYx4Na8s
	YUZ4Fglw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLViE-00000003Zt8-3Rng;
	Tue, 27 Oct 2026 01:10:50 +0000
Received: from mail-m16023652232.xmail.ntesmail.com ([160.236.52.232])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLViA-00000003Zsf-2kvp;
	Tue, 27 Oct 2026 01:10:49 +0000
Received: from [172.16.12.11] (gyproxy-mailtls0-entmail-virt215.gy.ntes [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 526f37367;
	Tue, 27 Oct 2026 09:10:37 +0800 (GMT+08:00)
Message-ID: <080cffd7-05e6-458d-a00a-b757b0f44aa5@rock-chips.com>
Date: Tue, 27 Oct 2026 09:10:37 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] pmdomain: rockchip: Add RK3572 boot peripheral
 domains
To: Heiko Stuebner <heiko@sntech.de>, 1579567540@qq.com,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>,
 Ulf Hansson <ulfh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org
References: <20261026-add-board-ok3572-c-pmdomain-v3-0-70d614d3d921@qq.com>
 <18fcfe7a-e25a-4516-810f-d787b779914d@rock-chips.com>
 <d4e92131-ceb8-4143-b8f8-21e7f9638bdb@rock-chips.com>
 <3329883.fEcJ0Lxnt5@phil>
From: Finley Xiao <finley.xiao@rock-chips.com>
In-Reply-To: <3329883.fEcJ0Lxnt5@phil>
X-HM-Tid: 0aa17ae8c54403a8kunm924ab6b13756aa
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTU9JVk9PTEpJS0tKHkxOHVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ge7N/YRv32U28Nwb4OcpHegrzM3yN4taMwOhX154ZZfvgCLbC/59Dy+jBHoNCN4aZRuWMU6xP31hcCM06/Q6kvWr4kjlclrKMl6OYR6h0L4Un6JhNlzizXNtQVkTp1rNW/B4MoldNvGfKJ7v6ugcamg/VxO/6JxWOr0ugEPLnGg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=BLytvqSWYrBr7L9UFKswaQyVlCa3Rxe50pFv8VUZDS4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_181047_285776_D653FF20 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CuWcqCAyMDI2LzEwLzI2IDE5OjUzLCBIZWlrbyBTdHVlYm5lciDlhpnpgZM6Cj4gSGkgRmlubGV5
LAo+Cj4gQW0gTW9udGFnLCAyNi4gT2t0b2JlciAyMDI2LCAxMjozNzowNiBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEZpbmxleSBYaWFvOgo+PiDlnKggMjAyNi8xMC8yNiAx
Njo0NywgRmlubGV5IFhpYW8g5YaZ6YGTOgo+Pj4g5ZyoIDIwMjYvMTAvMjYgMTE6MjEsIEN1bmhh
byBMdSB2aWEgQjQgUmVsYXkg5YaZ6YGTOgo+Pj4+IEZyb206IEZpbmxleSBYaWFvIDxmaW5sZXku
eGlhb0Byb2NrLWNoaXBzLmNvbT4KPj4+Pgo+Pj4+IEFkZCBzdXBwb3J0IGZvciB0aGUgUkszNTcy
IE5WTTAsIE5WTTEsIFBIUCwgYW5kIFZPUCBwb3dlciBkb21haW5zLgo+Pj4+Cj4+Pj4gU2lnbmVk
LW9mZi1ieTogRmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMuY29tPgo+PiBJIGhh
dmUgdG8gcG9pbnQgb3V0IHRoYXQgdGhlIGNoYW5nZXMgKHRoZSBzaHV0ZG93bi9yZXN0b3JlCj4+
IHJld29yaywgcGVuZGluZy1zdGF0ZSB0cmFja2luZywgZXRjLikgd2VyZSBub3QgbWFkZSBieSBt
ZSwgYW5kIEkgaGF2ZQo+PiBub3QgcmV2aWV3ZWQgdGhlbSBpbiBkZXRhaWwuIFRoZXJlZm9yZSwg
SSBzaG91bGQgbm90IHJlbWFpbiBhcyB0aGUKPj4gYXV0aG9yIChGcm9tOikgb2YgdGhpcyBwYXRj
aCwgbm9yIHNob3VsZCBteSBTaWduZWQtb2ZmLWJ5IGJlIGtlcHQgb24KPj4gaXQuCj4gQXMgdGhp
cyBzZWVtaW5nbHkgY29tZXMgZnJvbSB0aGUgdmVuZG9yLXRyZWUsIF9zb21lXyBSb2NrY2hpcCBh
dXRob3JzaGlwCj4gc2hvdWxkIGJlIGtlcHQgSSB0aGluaz8KPgo+IERvIHlvdSBoYXZlIGEgc3Vn
Z2VzdGlvbiB3aG8gdGhhdCBzaG91bGQgYmUgb3RoZXIgdGhhbiB5b3U/IDotKQpXZSBoYXZlIG5l
dmVyIGNhcnJpZWQgY29kZSBsaWtlIHRoaXMsIGFuZCB0aGUgb3RoZXIgcGFydHMgYWxzbwpkaWZm
ZXIgc2lnbmlmaWNhbnRseSBmcm9tIHRoZSBSb2NrY2hpcCBrZXJuZWwuIEl0IGRvZXMgbm90IGFw
cGVhcgp0byBiZSBvdXIgb3JpZ2luYWwgY29kZS4KPgo+IEkgZ3Vlc3MgYXMgeW91IHN1Z2dlc3Rl
ZCBzcGxpdHRpbmcgdGhpcyBhbnl3YXksIHRoYXQgYXV0aG9yc2hpcAo+IGNvdWxkIGFsc28gYmUg
c3BsaXQuCj4KPgo+IFRoYW5rcwo+IEhlaWtvCgotLSAKQmVzdCByZWdhcmRzLAoK5bqV5bGC5bmz
5Y+w5Lit5b+DIOiClumUi++8iEZpbmxleSBYaWFv77yJCioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKgrnkZ7oiq/lvq7nlLXlrZDogqHku73mnInpmZDlhazlj7gKUm9ja2NoaXAgRWxlY3Ryb25p
Y3MgQ28uLCBMdGQuCuemj+W7uuecgeemj+W3nuW4gumTnOebmOi3r+i9r+S7tuWkp+mBkzg55Y+3
6L2v5Lu25ZutQeWMujIx5Y+35qW8IDM1MDAwMwpOby4yMSBCdWlsZGluZywgQSBEaXN0cmljdCwg
RnV6aG91IFNvZnR3YXJlIFBhcmssIEZ1emhvdSwgRnVqaWFuIDM1MDAwMywgUC5SLiBDaGluYQpU
ZWw6IDA1OTEtODM5OTE5MDYtODYwMiBNb2JpbGU6IDE4NTA2MDU3NjAzCioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
