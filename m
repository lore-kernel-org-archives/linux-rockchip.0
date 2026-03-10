Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52D0FFD88D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 23:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXvoZGpwBjXkekDveU6prPe/+BitzCCMDNW7E6f/7sY=; b=IBXRJoX1HZft/r
	1PVcvsP8DcZw1m2/Nyzym6xz5IQY5LlrI8X2N6E/H6XKXHxvhB0k/kqqgdgrXNvKMfRr/OQl4Dhba
	zFCk64MKULrDml+MBUg3Jhv6v6pCnxdK0w4QoQl0qLw+Fr4UfkbumoneaRJ69wcvuMnzExoYp47Tk
	F2s29C5D18b+h1czkfCIHEDvQaV2ZW0J61HTuPpjiqtTdGxV7+4G2QKZttB83xokwIodXlHlvC73A
	d6eWK824Sl/gauFfGXeWi4ZCtXbL/oAuEjgtmAw6veMpqOpkYLtbXwKfbM1NI4CuTvpN+zC2kSjh+
	3WxHoliaONRjH2oi743Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w06T7-0000000ANlc-3rVS;
	Tue, 10 Mar 2026 23:26:29 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w06T4-0000000ANku-3po4
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 23:26:28 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-38a32d36396so4192801fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 16:26:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773185184; cv=none;
        d=google.com; s=arc-20240605;
        b=GR8zbewwGoooAm/RWLs0ef9/ZmciTco79/sg+HH++A9Y6kiYFOaB8jFPZQaK73nBEX
         N2947ApZgzJRao0XV98YYKDeQGi7j5aLWhuC/W2aeYvPHvlemPHTFBWpZwWmiwLS1yhr
         n6OBE2KCPJH9ueBVBujEBzbv1phCBWNeLXZ+kAp1RXAdp/Ntglp/Z16hBa9i7Z1+H7t8
         Yuq4VX6aRv3HBh6Qlg2x23hWuUmYFMAd+T1CLFyfbG2iYsxaNTh5dEVl//qdex16ELAh
         NqCTZP8/P6a7CrPAwJr4N6V5/uFj0nzqdQRSMlpeJk3NRrD2YD7b0fzKyEn0VnhpwLTJ
         DBJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nbE832rtYKpMRX+tYnhnQzdSRCBoOQQ9m9+SSD0KKTM=;
        fh=LM62337Gt7XE6vaGJJy00hyaTrfYmadM5C5BQCSY+Sg=;
        b=XE8yoNHjIIXGM4pbHm676DLIEeQH+ycfKDghcrO7a8n1zG4AdDtZEBbzU5JzkcVUy7
         u41ieUfmlyASviEqvZDBepMeQzdP1yPW711Gkru/WTAlhsJ6RfzOzkvNOktZOA/dbgDH
         gCTMPA/B7cBZW8OUI7+XqRzjtXpPB8qDEfeX0bI0Mr0DtH2qukwhukYvwWSsL9V2Ppza
         v4GtU+2/rnzjThByN6vZwNtObhF62uq2N4H8HEaxdVev+qeo9AWAEWjWMl2sT9e9bBzU
         yTkf45CLVBVlt7OQHFKfQ4aRZebA9vZgSzDWnAITfMibsX7jcx5L0ZC4jQJF8FpdYkKx
         tluA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773185184; x=1773789984; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nbE832rtYKpMRX+tYnhnQzdSRCBoOQQ9m9+SSD0KKTM=;
        b=U90kFkyaBmA3g1AYEPJJIAhtpuKJeGxdcGdBr1PyI0KbTmE2K2P4TB2rA5p5kABZ94
         gpw4QjlfvCtPvd4Q9Buqc1T1YfRw8D9/h14SFwmu515IaBazwjGyi7E6cp+fTn9YTwwq
         aWwdK9Q3gq9mQVQGfv2SD8tyB5xbsBsRb4ksKWpXYcgl8xGZ7ZTMs/eSsQtXzx9DhIqY
         RdD5x6v01/lVw/tyiOKz2G/YWO9VMQMD0XNXwYDPhEypNThEhniqBs5aPaqVfDVcF4Qy
         jgcj0DZoIqtlwUvmMaDfG/DVqQNaMrtke5/dZB51bqPAosxUlDs3gO8+o0VTK1G1uot4
         1lQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773185184; x=1773789984;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nbE832rtYKpMRX+tYnhnQzdSRCBoOQQ9m9+SSD0KKTM=;
        b=m+VJS20wIn12WjrP2VzpwlG6mnS9YsrSpnaMvsjXMbanCAgmWAHpClkHdHw0AYwVeY
         pWb0gPD4MV0HrrxYXzmq6MIVM/Sdwn9c1bmydm4MOMBSuNpUOf9QNBh3i+EXxM3IdA0F
         lmaSb2utKX/KfZBKLd2djMPucujrsgrNUVeQPnnAkmpUjPs24V/5ht7BJQTJhkxnR0SG
         G65BbDVKixHa39iXjuiFH+HRMIKIl5HTaW/pdQi6d5aLGdN/vrA0HelTigsDK7SGmwy3
         8/fmoClXtFVDzxfBtfnOSyErJjvL0CrPqSpKPGY6wBezngn5wzdRZEUjvffsKdi7iqVw
         ebmw==
X-Forwarded-Encrypted: i=1; AJvYcCWJj2vNIK3THEe+K/LeLa4w5gZtcitvS19qY+5VwXkmVnGr/QTi4YTaaBb25DE1kgAfHKUUw7Ul/vua3yUJyQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6TJDhBB8VqfLyPPxDUFzLuJrAKpf5kadDAnXO3roKFTrT/5UK
	DCoujd2T36/MU8hIy9ncH3ZViVk2rgMWR7IOZggz68b8zBCcGYZzYy/OQSe61cpTIkLmBPtJ7ak
	6fABvl6xWHS+yOJtNPI3ZHO5L4r44M20=
X-Gm-Gg: ATEYQzz5cBQBYQiWq7O9NI38XZ4Fx+WHKIAg+FriDKfYcQOBRjsotTb6l64XvKKvtrY
	EtGpuSVfOj/s2a5qnxCPriy4/coUrv1iIWlgEZGVNYklIELDNjNcp71tQ8wXoCTHSglVncgaaqn
	bLUT/UIVyR9VFYBJzh7W8ci5Tjd4wT4ie7De6+p6hxoa98RCaNjLJhGYcgzH7yO9/Ku8bcdb+u4
	bd5USvRdpTCYBfc9ZLVXnGcszXmbJ6RXlQ0LRL/dN9qsRxV7+QbTv0IAWquSmD1sgr19Atm1eAB
	8BP4aGlYqyaZL01eLAI4qAfr3DPdJdwrlY1gpLCl1hoP/XI904HmhVRpldxPyveF/cyOv7aNA46
	Iuy6xhig=
X-Received: by 2002:a2e:9e11:0:b0:387:a16:ee83 with SMTP id
 38308e7fff4ca-38a5d01f781mr12942351fa.11.1773185184057; Tue, 10 Mar 2026
 16:26:24 -0700 (PDT)
MIME-Version: 1.0
References: <20260216010219.2131484-1-festevam@gmail.com> <20260216010219.2131484-2-festevam@gmail.com>
 <47923648.fMDQidcC6G@phil>
In-Reply-To: <47923648.fMDQidcC6G@phil>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Mar 2026 20:26:12 -0300
X-Gm-Features: AaiRm52ednYfXwxvAUqCdpkvrziRMGpVc5js93M_Hig6B9OSV9sZiqzLFMTLwA0
Message-ID: <CAOMZO5CBFq-crZs1Wub=7iaWT1n==Jrv2D+1q38NXd1cJM51+g@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] ARM: dts: rockchip: Add support for RV1103B
To: Heiko Stuebner <heiko@sntech.de>, Tom Rini <trini@konsulko.com>
Cc: jonas@kwiboo.se, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Fabio Estevam <festevam@nabladev.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_162626_975068_FA56B9E8 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
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

SGkgSGVpa28sCgpPbiBNb24sIE1hciA5LCAyMDI2IGF0IDY6MjTigK9QTSBIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKCj4gPiArICAgICAgICAgICAgIGNydTogY2xvY2st
Y29udHJvbGxlckAyMDAwMDAwMCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxydjExMDNiLWNydSI7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmVn
ID0gPDB4MjAwMDAwMDAgMHg4MTAwMD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgI2Nsb2Nr
LWNlbGxzID0gPDE+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICNyZXNldC1jZWxscyA9IDwx
PjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBib290cGgtYWxsOwo+Cj4gSSBkb24ndCB0aGlu
ayB3ZSB3YW50IHUtYm9vdC1zcGVjaWZpYyBwcm9wZXJ0aWVzIGluIG1haW5saW5lLgo+IFRoZXkg
YXJlIG5vcm1hbGx5IGtlcHQgaW4gc2VwYXJhdGUgLXUtYm9vdC5kdHNpIGZpbGVzCgpJZiBJIGtl
ZXAgdGhlbSBpbiAtdS1ib290LmR0c2ksIHRoZW4gVG9tIFJpbmkgd2lsbCBhc2sgbWUgdG8gdXBz
dHJlYW0gdGhlbSA6LSkKClRoZXNlIGJvb3RoLSogcHJvcGVydGllcyBhcmUgYWxsIHBhcnQgb2Yg
dGhlIGR0LXNjaGVtYSwgYW5kIG1hbnkgU29DCnZlbmRvcnMgKE5YUCwgUmVuZXNhcywgVEksIFJp
c2NWKSBhcmUgdXBzdHJlYW1pbmcgdGhlbS4KCkp1c3Qgc29tZSBleGFtcGxlczoKCmh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4Lmdp
dC9jb21taXQvP2g9djcuMC1yYzMmaWQ9MjU2ZmViNWJlNDgyMzE1YTkxYzFiZDFhMTgwODI3NmY1
N2VmNzZkZAoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
dG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aD12Ny4wLXJjMyZpZD1lMDVmNjU2NmJjNzc4YmMx
MjE1MjgzZTY2N2UxODY5MmQxNmIyNWY1CgpXb3VsZCB5b3UgYmUgd2lsbGluZyB0byBhY2NlcHQg
dGhlc2UgYm9vdHBoLSogcHJvcGVydGllcyBmb3IgdGhlClJvY2tjaGlwIGRldmljZSB0cmVlcz8K
ClRoYW5rcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
