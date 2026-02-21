Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63A46C61DE5
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Feb 2026 15:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEniexODwHUD9l1bakACQgW15z3GybkWqWvOechJE+A=; b=qe8iZKf7SWd7bk
	7gv8akAdu9+nPWRcMRzXPs3MT7CiKbD9HrCA1tX7eqo4Qd3ioMw53rY5uho513oF95LUAij/09R7R
	lg8NpLeTlx8eLFk7Kw7hrkGEzVZ3qfRcNN+Z5ZTxnZnID0HVJ58yu7ULlonfk0+NiDjKWkKEPbBbR
	57E69DU1e5rKj28fXqN+4EpHU0FWQSh4oe6xrGA4YKdRFVVraB8SoNeYVQmAz6ZfWFyh8sEaR68Ch
	bK1jeQL178hDcQnWw8Osd/rGwjLCc9xNj9jy0f7RWigQJ2oKQura/YU546BRN/dFnYwZSJe8HGPsZ
	eHBFbt2gX56nD39DBb5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtosm-0000000G8fr-0RE5;
	Sat, 21 Feb 2026 15:27:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtosj-0000000G8fK-08k1;
	Sat, 21 Feb 2026 15:26:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CpBqYzKJdyWjUpSjPg7WvZWakCapieEoFK6pgPGGYMs=; b=wa1bCZvd3zQ4i2ZKK4LlmvRFu7
	FI7MZ8H1i3KUcrEtnbI6HU6uf/BHG7mbx5oj2ai/SXFm0FJ5Usekh+LOeRZjtZRHV0VNfrHuG0WIF
	sdb89KFHLfGpGoN/yFOOjFgt0i06jkR24Y6/oDV4zjHtfW6oNs2AKqkzWogmN2+OQwUvZQp8qVj3A
	Kd6pQZxxY2JAvZ3AU+FnJFfvMsVu+fO2hcGPYeGEsSlFQb4h3qxEZXsLiTbcfZUAj+z5K0NIbddCi
	wpXyCWLccXy5pdq91pjprK2iZ9+8GqoZhMakYgkBVpIU8Z2adRb/uqRvPcSScrRnzaFhFUszEBVrj
	jv3sjFCQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 xiaopeitux@foxmail.com
Cc: Pei Xiao <xiaopei01@kylinos.cn>, Felix Gu <ustc.gu@gmail.com>
Subject: Re: [PATCH] soc: rockchip: grf: fix device node refcount leak in error path
Date: Sat, 21 Feb 2026 16:26:45 +0100
Message-ID: <20948198.jiFIW2sfyF@diego>
In-Reply-To: <6295978.F8r316W7xa@diego>
References: <tencent_BE953AE4AA17D089CF5C87EB6F4400F70206@qq.com>
 <6295978.F8r316W7xa@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260221_072657_090657_24CA1FD4 
X-CRM114-Status: GOOD (  11.52  )
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

QW0gU2Ftc3RhZywgMjEuIEZlYnJ1YXIgMjAyNiwgMTU6NTE6NDYgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBIZWlrbyBTdMO8Ym5lcjoKPiBIaSwKPiAKPiBBbSBTYW1zdGFn
LCAyMS4gRmVicnVhciAyMDI2LCAwMTo0MDoyNyBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVp
dCBzY2hyaWViIHhpYW9wZWl0dXhAZm94bWFpbC5jb206Cj4gPiBGcm9tOiBQZWkgWGlhbyA8eGlh
b3BlaTAxQGt5bGlub3MuY24+Cj4gPiAKPiA+IFRoZSBmb3JfZWFjaF9tYXRjaGluZ19ub2RlX2Fu
ZF9tYXRjaCgpIG1hY3JvIGF1dG9tYXRpY2FsbHkgbWFuYWdlcyBkZXZpY2UKPiA+IG5vZGUgcmVm
ZXJlbmNlIGNvdW50cyBkdXJpbmcgbm9ybWFsIGl0ZXJhdGlvbi4gSG93ZXZlciwgd2hlbiBicmVh
a2luZyBvdXQKPiA+IG9mIHRoZSBsb29wIGVhcmx5IHdpdGggcmV0dXJuLCB0aGUgY3VycmVudCBp
dGVyYXRpb24ncyBub2RlIGlzIG5vdAo+ID4gYXV0b21hdGljYWxseSByZWxlYXNlZCwgbGVhZGlu
ZyB0byBhIHJlZmVyZW5jZSBjb3VudCBsZWFrLgo+ID4gCj4gPiBGaXggdGhpcyBieSBhZGRpbmcg
b2Zfbm9kZV9wdXQoKSBiZWZvcmUgcmV0dXJuaW5nIGZyb20gdGhlIGxvb3AKPiA+IHdoZW4gZmFp
bHMuCj4gPiAKPiA+IEZpeGVzOiA3NWZiNjNhZTAzMTIgKCJzb2M6IHJvY2tjaGlwOiBncmY6IFN1
cHBvcnQgbXVsdGlwbGUgZ3JmIHRvIGJlIGhhbmRsZWQiKQo+ID4gU2lnbmVkLW9mZi1ieTogUGVp
IFhpYW8gPHhpYW9wZWkwMUBreWxpbm9zLmNuPgo+IAo+IEZlbGl4IEd1IHdhcyBzbGlnaHRseSBm
YXN0ZXIgWzBdLCBzbyBJJ2xsIGFwcGx5IHRoZWlyIHBhdGNoIG9uY2UgdGhlIG1lcmdlLQo+IHdp
bmRvdyBpcyBjbG9zZWQuCgphbmQgSSBqdXN0IHJlYWxpemVkIHRoYXQgU2hhd24gd2FzIGFjdHVh
bGx5IGV2ZW4gZWFybGllciBbMV0KCj4gCj4gVGhhbmtzCj4gSGVpa28KPiAKPiAKPiBbMF0gaHR0
cDovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMjE3LWdyZi12MS0xLTIwODhjOTY2ODc1ZEBnbWFp
bC5jb20KWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8xNzcwODE0OTU3LTE3NzYyLTEt
Z2l0LXNlbmQtZW1haWwtc2hhd24ubGluQHJvY2stY2hpcHMuY29tLwoKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
