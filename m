Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D196BC88E63
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 18:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=It6YUBpXeH6UELACnrBtB526xHI5SgW+Jp5vyMkqTgQ=; b=Llczdyb/QlLe+6
	imIdvP3QOFCwRUTrSIncDvN1swqsUuCAsAQmTdo945PST4JAxV0UKhqTBRrvWwuECwmL57sm4TQTb
	txb3fpsdm5TC9r21twIpheyBB6+aHsJno0iEZx0UDRjz80I4/ll4IPMPPhT4iXsxffKtqMyQDA7IN
	i/oxHGVicUjtSYwvEBWm01iaq+5QBMls4iYB9CS2HMh9Yvn44kZBj/WJxZha7/pRdEUreIQMOEddp
	vlqanIS9qKucml5ldLYbburraqy7P8iWiS9V3Tx2tzPq012T9QFVCySCMyJp+hbSNtGey+qAc50/l
	PoB7/p7bYfjBLALZwxcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5oa5-00000001tRn-1uIr;
	Sun, 13 Sep 2026 18:05:33 +0000
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5oa3-00000001tQp-0E03
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Sep 2026 18:05:32 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c2950c25486so149909766b.1
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Sep 2026 11:05:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789322729; cv=none;
        d=google.com; s=arc-20260327;
        b=mep6rpA+st7jXrwK9s5bsdvfjPW3bF1AITE3ei1tFnvoIzfO8DLZaAN5EWjOaIo+Ns
         8QcSncXgfyCMpKRprwxLRWtLW8C3yVRc0VX7OZZL0UyrhJ+6ffh6fbtDPDoA4QgTPemB
         nrIT/TlYBsSQryT7QZQIqDJbbwkV88UzF+foCVVb0mLp/+d45Yhq7PjxLi39nnQcfXw6
         IU3uNjyMtpqfzbLnVvUd4vhAUkbfdmMhMJ1YdWR0nDHM8gWr6G3OpaFTmgto+aJ5HIYF
         KW5FjtyBRwUPVFdksxf8cZwfWgq/9/DnhmaePfgVudeO11AcG1dUatje1AnqgaiLBUzZ
         sEqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=voliItkzs3OtrnJtmbhCv1xhQ+FU+qBLL3OO/h9nssc=;
        fh=i/oj7LnTN10COdCIrw4KcPqYfley0RiaKklTKbDun+g=;
        b=Pnbk3n/pf625XP8PjYR2udtFTNXXnK4vNfU/g+rke8wUyQkybvXRLRylDo4A2aFEAb
         C+fBp2c7JAFfwBQQrF4FwzTHOT3MQ4nIxD10mIg8bPKzxIuJKigbp2Ycq0PG6/Ho/HA2
         p9tqNHldQ+loU/nk8j4zLokNKP/HMSCf8H/EHTG2lGVCR7xJa4bfiQY9agDvXSH5mRc0
         VP7gc0CIYMlO2RBinpeEKSIEShXSPj5JotpCtrbDNBRL6+rxxAgYjRBzMPr3hLFVbhMb
         5ODPMhSOJ2icgfKP+KaYntbSw0DdzqgvIFE/6J7v7t+XqVRKFN6mKAQ8wMsUn1dKI0Kk
         xJtw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789322729; x=1789927529; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=voliItkzs3OtrnJtmbhCv1xhQ+FU+qBLL3OO/h9nssc=;
        b=SIZ71KzQRzit+hr5DOeE7KzNKUzQi3Z7BiicIJwXcjVcN/mDAGJaT1+iSpf8LmydaP
         5a3dVM9KaRmGw4w4M7iQINQlTXoaJo7P2GOLdqr9oBNbxUERpkPDZGc6TsVRq4wuV72b
         GE/JublYiZdP+3mZH2fR2kOWdhAxQJvI/u02tES89fAZ3hzXLQCZYoV24SPvyOKH6joX
         GH9wwOLx5w8KVx6jrCeux4Wprxr1RGR84Ypzwlz+Nr7ljJJY37LnleJMOToyWLX6niXF
         EiwIcQcd8GdbCBSIEe72qhzErbD6I2NgTUrCOeZfgLTrNPGbAAsq6uuyZA562fz9pNpO
         CEmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789322729; x=1789927529;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=voliItkzs3OtrnJtmbhCv1xhQ+FU+qBLL3OO/h9nssc=;
        b=D5nqFBCqI8Y6g1+pZn8LWWPQmSNa1FrtN2bsGzHlhLORa+xrTv2qgRdP3MxkZJ998X
         HkUK5Au+IaJuzPX0VllFnSw6pHPLFjC/punnba1SRZv39s/yVAui3ikY8RL6NftQzcjM
         781WpQQdnRqGanfLSZ6l+Ui5VHfSfrgyg0qSX2WervrSxJlhF779/qD9K8cXwC1nYNGQ
         zXIRGgL9UsR8O70HDLFte9S9fedp1MyRKbc8kM9YAsuJlRpjpYfj+qW0/ru8f9H8zw7H
         B/yC22IsILULZhV0DoHMl6haOb9DivUZ/gF/pTIKV3FfigzYwpPmbav/JHEYzyyyaxse
         Zj9g==
X-Forwarded-Encrypted: i=1; AKwUvBxdJPBA534OYAnYIG/1LmroRLBKAaN1rEDOeBLk7eTPXo6YxaZR+WLwl1CW9ZyQDnvRKT0uXZOcF3b+AWgyuA==@lists.infradead.org
X-Gm-Message-State: AFuF++nxQrfvcHQTHjyx76W0mPxp5X7R3LoyLyIRZC6jYDZOtzvGWdxV
	aNAI0aFiRTlvtYQcYqz2fKIIh5uRmxXGROFpjsY5dVQ66pANlhCr6xx4/BApVwvEmV+7ZVqUVCC
	1NZk9RDRuEBzCFAgD4wqnfzKjZ2Iv458=
X-Gm-Gg: AYBFou0Bj8xesUTSHR3sxd43ruFMcZhGl0AZ11eAL7/awkZN1Fbahot0EuoEhr7EEQB
	TGOzkQdJlcB4kSIVc6PcSu5jx8PzmS/fIkaiP1syJlaFiZ93WBsX5ZHskjB4oeRpIL5NNyEnJ02
	zjvzZt9M00xZZ6MJlJL3PSMVkHVWQaSow1oKl325DeoVBOi1Q/7pqSdzLi+mAIilrEA/wCel0mz
	VN1tyIhgtyCf5o/Arh2zPZBWC/8xjM1rfgYfcd6iALOOHRDuLf8Ai0oxmZaV7N0ImzXVLwx+4EE
	G/aeJXCDQ7UhHO98N6ohSEDJAvy3p70xfOF7t+NFole/wVhrHWj7/tvRSg==
X-Received: by 2002:a17:907:d109:b0:c29:3e59:fd03 with SMTP id
 a640c23a62f3a-c2966732c9cmr1353966666b.18.1789322728959; Sun, 13 Sep 2026
 11:05:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260907153713.2572547-11-coiaprant@gmail.com> <20260912201332.127297-1-kuba@kernel.org>
In-Reply-To: <20260912201332.127297-1-kuba@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Mon, 14 Sep 2026 02:05:16 +0800
X-Gm-Features: AcwNN1XgxVngHvtMFNhv7y3qMtC3nxI3TV6XULwbytRJ0h4SCX-LBQfd6V3fGRY
Message-ID: <CALj3r0jBCoX=GRTrshY7QJO3Vykrbx+1NgE=zOV3S+WLLBNM2w@mail.gmail.com>
Subject: Re: [PATCH net-next v4 09/10] arm64: dts: rockchip:
 rk3568-photonicat: enable SGMII LAN port
To: Jakub Kicinski <kuba@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, vkoul@kernel.org, maxime.chevallier@bootlin.com, 
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, romain.gantois@bootlin.com, 
	hkallweit1@gmail.com, neil.armstrong@linaro.org, linux@armlinux.org.uk, 
	shawn.lin@rock-chips.com, david@ixit.cz, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_110531_450091_79EA7660 
X-CRM114-Status: GOOD (  25.48  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIgxM+aXpeWRqOaX
pSAwNDoxM+WGmemBk++8mgo+ID4gQEAgLTI0Miw2ICsyNDMsNyBAQCAmY29tYnBoeTEgewo+ID4K
PiA+ICAmY29tYnBoeTIgewo+ID4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gKyAgICAgcm9j
a2NoaXAsc2dtaWktbWFjLXNlbCA9IDwwPjsKPiA+ICB9Owo+Cj4gW1NldmVyaXR5OiBMb3ddCj4g
VGhlIGNoYW5nZWxvZyBzYXlzOgo+Cj4gICAiRW5hYmxlIGNvbWJwaHkyIHdpdGggcm9ja2NoaXAs
c2dtaWktbWFjLXNlbCA9IDwwPiB0byByb3V0ZSB0aGUgU0dNSUkKPiAgICBpbnRlcmZhY2UgdG8g
R01BQzAuIgo+Cj4gSXMgdGhhdCBkZXNjcmlwdGlvbiBhY2N1cmF0ZT8gIEluIHRoZSBiYXNlbGlu
ZSB0aGUgbm9kZSBhbHJlYWR5IHJlYWRzOgo+Cj4gICAmY29tYnBoeTIgewo+ICAgICAgICAgICBz
dGF0dXMgPSAib2theSI7Cj4gICB9Owo+Cj4gc28gdGhlIG9ubHkgbmV3IHRoaW5nIGhlcmUgaXMg
dGhlIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWwgcHJvcGVydHkuICBDb3VsZAo+IHRoZSB3b3JkaW5n
IGJlIGFkanVzdGVkIHRvIHNheSB0aGUgcHJvcGVydHkgaXMgYWRkZWQgdG8gYW4gYWxyZWFkeSBl
bmFibGVkCj4gY29tYnBoeTI/CgpZb3UncmUgcmlnaHQuIGNvbWJwaHkyIGlzIGFscmVhZHkgc3Rh
dHVzID0gIm9rYXkiIGluIHRoZSBiYXNlbGluZTsgdGhpcwpwYXRjaCBvbmx5IGFkZHMgdGhlIHJv
Y2tjaGlwLHNnbWlpLW1hYy1zZWwgcHJvcGVydHkgdG8gaXQuIEknbGwgZml4IHRoZQp3b3JkaW5n
IHRvIHNheSB0aGUgcHJvcGVydHkgaXMgYWRkZWQgdG8gYW4gYWxyZWFkeS1lbmFibGVkIGNvbWJw
aHkyLgoKPiBbU2V2ZXJpdHk6IExvd10KPiBUaGlzIGlzbid0IGEgYnVnLCBidXQgdGhlIG5ldyBw
cm9wZXJ0aWVzIGRvIG5vdCBmb2xsb3cgdGhlIG9yZGVyaW5nIHVzZWQgYnkKPiB0aGUgcmVzdCBv
ZiB0aGlzIGZpbGUsIHdoZXJlIHByb3BlcnRpZXMgY29tZSByb3VnaGx5IGFscGhhYmV0aWNhbGx5
IGFuZAo+IHN0YXR1cyBpcyBsYXN0LiAgSGVyZSByb2NrY2hpcCxzZ21paS1tYWMtc2VsIGxhbmRz
IGFmdGVyIHN0YXR1cywgaW4gJmdtYWMwCj4gYmVsb3cgcGNzLWhhbmRsZSBjb21lcyBiZWZvcmUg
bWFuYWdlZCwgYW5kIGluIHRoZSBuZXcgJnhwY3Mgb3ZlcnJpZGUgc3RhdHVzCj4gaXMgZmlyc3Qg
d2l0aCBwaHlzL3BoeS1uYW1lcyBhZnRlciBpdC4gIENvbXBhcmUgdGhlIGV4aXN0aW5nICZnbWFj
MQo+IG92ZXJyaWRlLCB3aGljaCBlbmRzIHdpdGggc3RhdHVzID0gIm9rYXkiOy4gIENvdWxkIHRo
ZXNlIGJlIHJlb3JkZXJlZD8KCkknbGwgcmVvcmRlciB0aGUgcHJvcGVydGllcyB0byBmb2xsb3cg
dGhlIGZpbGUncyBjb252ZW50aW9uIChyb3VnaGx5CmFscGhhYmV0aWNhbCwgd2l0aCBzdGF0dXMg
bGFzdCkKCj4gPiBAQCAtMzUwLDYgKzM5MSwyNSBAQCByZ21paV9waHk6IGV0aGVybmV0LXBoeUAz
IHsKPiA+ICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BDMCBHUElPX0FD
VElWRV9MT1c+Owo+ID4gICAgICAgICAgICAgICByeC1pbnRlcm5hbC1kZWxheS1wcyA9IDwxNTAw
PjsKPiA+ICAgICAgICAgICAgICAgdHgtaW50ZXJuYWwtZGVsYXktcHMgPSA8MTUwMD47Cj4gPiAr
Cj4gPiArICAgICAgICAgICAgIGxlZHMgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICNhZGRy
ZXNzLWNlbGxzID0gPDE+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0g
PDA+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGxlZEAxIHsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwxPjsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGNvbG9yID0gPExFRF9DT0xPUl9JRF9BTUJFUj47Cj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9IExFRF9GVU5DVElPTl9XQU47Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBkZWZhdWx0LXN0YXRlID0gImtlZXAiOwo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAgbGVkQDIg
ewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDI+Owo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY29sb3IgPSA8TEVEX0NPTE9SX0lEX0dSRUVOPjsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gTEVEX0ZVTkNUSU9OX1dB
TjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRlZmF1bHQtc3RhdGUgPSAia2Vl
cCI7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+
ICAgICAgIH07Cj4gPiAgfTsKPgo+IFtTZXZlcml0eTogTG93XQo+IFRoaXMgaHVuayBkZXNjcmli
ZXMgdGhlIExFRHMgb2YgdGhlIHByZS1leGlzdGluZyBSR01JSSBXQU4gUEhZIG9uICZtZGlvMSwK
PiB3aGljaCBpcyBhbHJlYWR5IGZ1bmN0aW9uYWwgYW5kIHVuYWZmZWN0ZWQgYnkgdGhlIFNHTUlJ
IGVuYWJsZW1lbnQuICBUaGUKPiBjaGFuZ2Vsb2cganVzdGlmaWVzIGl0IG9ubHkgd2l0aDoKPgo+
ICAgIkFsc28gYWRkIExFRCBjb25maWd1cmF0aW9uIGZvciB0aGUgZXhpc3RpbmcgUkdNSUkgUEhZ
IG9uIG1kaW8xIGZvcgo+ICAgIGNvbnNpc3RlbmN5LiIKPgo+IFdvdWxkIGl0IGJlIHByZWZlcmFi
bGUgdG8gc3BsaXQgdGhpcyBpbnRvIGl0cyBvd24gcGF0Y2gsIHNvIHRoaXMgY29tbWl0Cj4gY29u
dGFpbnMgb25seSB0aGUgU0dNSUkgTEFOIHBvcnQgZW5hYmxlbWVudD8KClRoZSBMRUQgY29uZmln
dXJhdGlvbiBmb3IgYm90aCBQSFlzIGlzIGtlcHQgaW4gdGhpcyBwYXRjaCBiZWNhdXNlIHRoZQp0
d28gUEhZcyBhcmUgdGhlIHNhbWUgTW90b3Jjb21tIGZhbWlseSB3aXJlZCBpZGVudGljYWxseSBv
biB0aGlzIGJvYXJkLAphbmQgZGVzY3JpYmluZyB0aGVtIHRvZ2V0aGVyIGtlZXBzIHRoZSB0d28g
bWRpbyBub2RlcyBjb25zaXN0ZW50LiBUaGUKY2hhbmdlIGlzIHB1cmVseSBkZXNjcmlwdGl2ZSBh
bmQgZG9lcyBub3QgYWZmZWN0IHRoZSBTR01JSSBlbmFibGVtZW50LgoKVGhhdCBzYWlkLCBpZiB5
b3UgcHJlZmVyIGl0IHNwbGl0IG91dCwgSSBjYW4gbW92ZSB0aGUgbWRpbzEgTEVECmRlc2NyaXB0
aW9uIGludG8gYSBzZXBhcmF0ZSBwYXRjaCBpbiB2NC4KCj4gPiBAQCAtNTg2LDMgKzY0NiwxMyBA
QCAmeGluMzJrIHsKPiA+ICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAgICAg
ICBwaW5jdHJsLTAgPSA8JmNsazMya19vdXQxPjsKPiA+ICB9Owo+ID4gKwo+ID4gKyZ4cGNzIHsK
PiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ICsgICAgIHBoeXMgPSA8JmNvbWJwaHkyIFBI
WV9UWVBFX1NHTUlJPjsKPiA+ICsgICAgIHBoeS1uYW1lcyA9ICJzZXJkZXMiOwo+ID4gK307Cj4K
PiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBTaG91bGQgcGh5cy9waHktbmFtZXMgbGl2ZSBpbiByazM1
NjguZHRzaSByYXRoZXIgdGhhbiBpbiBlYWNoIGJvYXJkIGZpbGU/Cj4KPiBUaGUgYmluZGluZyBs
aXN0cyB0aGVtIGFzIHJlcXVpcmVkIHByb3BlcnRpZXMgb2YgdGhlIFhQQ1Mgbm9kZToKPgo+ICAg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9wY3Mvcm9ja2NoaXAtZHd4cGNz
LnlhbWwKPiAgIHJlcXVpcmVkOgo+ICAgICAtIGNvbXBhdGlibGUKPiAgICAgLSByZWcKPiAgICAg
LSAiI2FkZHJlc3MtY2VsbHMiCj4gICAgIC0gIiNzaXplLWNlbGxzIgo+ICAgICAtIGNsb2Nrcwo+
ICAgICAtIGNsb2NrLW5hbWVzCj4gICAgIC0gcGh5cwo+ICAgICAtIHBoeS1uYW1lcwo+ICAgICAt
IHBvd2VyLWRvbWFpbnMKPgo+IGJ1dCB0aGUgU29DIG5vZGUgaW4gYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjguZHRzaSBoYXMgbmVpdGhlcjoKPgo+ICAgeHBjczogcGNzQGZkYTAw
MDAwIHsKPiAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgteHBjcyI7Cj4g
ICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICAgICAgICAgICAjc2l6ZS1jZWxscyA9
IDwwPjsKPiAgICAgICAgICAgcmVnID0gPDB4MCAweGZkYTAwMDAwIDB4MCAweDIwMDAwMD47Cj4g
ICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IFBDTEtfWFBDUz4sIDwmY3J1IENMS19YUENTX0VFRT47
Cj4gICAgICAgICAgIGNsb2NrLW5hbWVzID0gImNzciIsICJlZWUiOwo+ICAgICAgICAgICBwb3dl
ci1kb21haW5zID0gPCZwb3dlciBSSzM1NjhfUERfUElQRT47Cj4gICAgICAgICAgIHN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4KPiBEb2VzIHRoaXMgbWVhbiBldmVyeSByazM1NjggZHRiIHJlcG9ydHMg
cGNzQGZkYTAwMDAwIGFzIG1pc3NpbmcgdGhlIHJlcXVpcmVkCj4gcGh5cyBhbmQgcGh5LW5hbWVz
IHVuZGVyIG1ha2UgQ0hFQ0tfRFRCUz15LCBpbmNsdWRpbmcgYm9hcmRzIHRoYXQgZG8gbm90Cj4g
ZW5hYmxlIHRoZSBYUENTPwo+Cj4gVGhlIFhQQ1MgdG8gY29tYnBoeTIgY29ubmVjdGlvbiBpcyBp
bnRlcm5hbCB0byB0aGUgU29DLCBzbyBlYWNoIGJvYXJkIHRoYXQKPiBlbmFibGVzIGl0IHdpbGwg
aGF2ZSB0byByZXBlYXQgdGhlIHNhbWUgcGhhbmRsZSwgYXMgdGhpcyBwYXRjaCBkb2VzLiAgQ291
bGQKPiBwaHlzID0gPCZjb21icGh5MiBQSFlfVFlQRV9TR01JST47IGFuZCBwaHktbmFtZXMgPSAi
c2VyZGVzIjsgYmUgbW92ZWQgaW50bwo+IHRoZSBkdHNpIG5vZGUgaW5zdGVhZD8KCkFzIHJlcGxp
ZWQgaW4gdGhlIGVhcmxpZXIgcGF0Y2gsIHRoZSBTZXJEZXMgY29ubmVjdGlvbiBpcyBib2FyZC1z
cGVjaWZpYwooc29tZSBib2FyZHMgdXNlIGNvbWJwaHkxIGZvciBTR01JSSwgb3RoZXJzIHVzZSBj
b21icGh5MiksIHNvIGl0IGNhbm5vdApiZSBtb3ZlZCBpbnRvIHJrMzU2OC5kdHNpLgoKQmVzdCwK
Q29pYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
