Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA087FF8860
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dr23P/sc2rFtY6MO/MOuT/bnqO1/8DQ7DDt4sSt9MKM=; b=JO4etRwP8j8TCO
	v/h2KBFiblvRpY4ocoi58K+7vvGoG2k8OLcIgE7CHUHnJ8Kxv8BlPUL1fQOnE14bFDsvnvjM6s5u7
	T5BKAoX3+nczdKdpuFfj8AW4rtd4SPh6v/08Sj18KfQYIVIgdTaXPFMBR0oJ4ZMf3aP86B77rM339
	hpr+NE6Exfda4PvB1XXXUdrkWAvrFLM1LYCKsIXJ1jIqnA6JtTEbPAtCU8iFId7ktvNuMkhLDHC+D
	kX40D8PcLmyNhdK3to4ctH3iOfqLV8pS8aynjZDWQ6OM8EQ0zEQtZgJvQXKGajfX5qPVBu7qDhhCx
	yWTkjOimkuIFf0EwCOZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKwR-0000000GsNj-3Ppy;
	Mon, 27 Apr 2026 12:19:59 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKwO-0000000GsMt-1sao
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Apr 2026 12:19:57 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-50e5b55062fso71406611cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 05:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777292395; cv=none;
        d=google.com; s=arc-20240605;
        b=jokCPfdOQ/8v52l40V+UcwPC6YqZH0zOYra5qmkcnQ68J9mjhpM9pTuekAAWR+Ul5x
         1d3P2G5OcRKaMKG0o1LzDnoLMy4JjqYeKosMNa1aezLi8gSqeCEd+z+CgU84AYvBJKV7
         /G+6oinFYEJ/cEJNqXNs4ZHPZ0kWSlGnmVwgTsQLQqp0O/iZwcXFZb8G+YPSEBo2PDJi
         m1OOFe8wmQ/tJ53Xuwk4iQt2BF/CMSA9DmEx6dXFr2oQaB0UC0fzK6pjLfRtz53+tJ2J
         Hq6XzSHFPDA3qf7ceRh6wWlRSD5dk1nXBtidtHZDUWtGFizLKPznOfATu3OGRuUIiwyf
         YpIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PJcxGiVkZlfjJqmXJdSpcQcuZLHP2CGOgvZ7uSde88A=;
        fh=mWbH8bjZlmjNkrtp+4jJ7XyIK7LxYk0/AeN0wbxzB9k=;
        b=XItzIou6YmSYVwoGd26QzoibSP+cIdIVaQ9FF6LxJkTWNufZsJHpY+XNX7ez+3s5dh
         3F4nmYFu5zcAImdhosKH39btnkgqueKnykpaQYpW5hntNbDU0bapXYhOIZo0fFJMeaih
         HT3stJlQjjAJc2+hPslhpG48ji5YE1iPjNacKqrydmcYZ3u+Dnba6gxW4m+zl6M/RMYD
         0C0FLoalkFV1Jr+rwdPeSyb65bDLSLHF9OZMtbL3EKbw2k5nGYFOGjLq10YB1iHv8BkQ
         iAeLx5xE7etTVk0YFA5mkcDWbS5xyHu+5Pk5RXFovSX1MMw8iMSwR19A9sPfvpEpK5db
         KcbQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777292395; x=1777897195; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PJcxGiVkZlfjJqmXJdSpcQcuZLHP2CGOgvZ7uSde88A=;
        b=fzANUqYgUGAup1Vz6dzAezQpTMD7xtt2xQ0fEgsPNKwUpUbibukam4g3FXq3nlA84S
         6jWvDOuWAFM99/KbzsRRcXdQ+uPnTybf8DbJUHXChfKY/NEiWYwYNmcGaw58Jtw8r9oC
         feMSj8o0W7cDxOlAEt9U88088DcwtA4TaBOlc2dVcUGMYDjsorOTKHI++TW4hH5tgqu0
         8LFOjn1m4wn+qCXEQcLK5EZ2llnoQ+YPK2SXMNcVTD2fBJuXbTeFLOKyTp7QrxRLENI6
         ABKWNdD7p4HhbS/BOb3kTEB5GisRzqAs3tjeEJo1ROyE+/zeXAon547w5tpgkVV2oNxO
         p/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777292395; x=1777897195;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PJcxGiVkZlfjJqmXJdSpcQcuZLHP2CGOgvZ7uSde88A=;
        b=eiRGHZSQuYzk6DFhTykewJSPw7bUW3Eo4h91kN34LLZYcvKwlMt+DwoFKKB+1D+oKJ
         P5EurpcvlOvT97Wjt5WRmbss9TDqYENl+xXesRGAZFS0Fm1iGy8ZKS5hMVjSaa9Nl/CZ
         BtTB710DG/fdnW26+bnFsyN3VcDPlxIFg4OjFRrWOTxqYroIakil7Ct439qZ4QyEjCxb
         Ew+72KttlbtiVDxuKYywCWTnveAjHo2DCS5kc1tuu874ZXO3vv30SkZNyinWB15Osm16
         jEur98HCYdDYYBKTHIFGNB/RXaIaE7rSZBWiX6+7xyDgiyTQnqFzvnGXD3t7kTXsvz3r
         PUuw==
X-Forwarded-Encrypted: i=1; AFNElJ/E0ubx0dUC6EmA1FGxxMGSFZnQd5myvG3t4WSfbOlUMQ5NiJEugR+vtZK1imG6KxiXDLQaDtoz2G2swHJRjw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyFMFWwwKjAeW4vDiDZa/Zxs+NoYtuLVMFJzDWZ2ZxNrPCRO7ho
	9tgx/MSxPNg2xID/M+7D+J0X8POQcUw9X+7YDs5V/h7eNhCn6GaBemjUEN1JUYd4LKakdciYwW1
	XeHtndJ15xB+3iJcTvM36UbAuVyBfy+g=
X-Gm-Gg: AeBDietKEKCIr/awVkfEfocNN7OnZdiA3XQ7vPhs5O01gdEn5PkGKIF8TkjvY2mUEmr
	KeW+7XxevbXRzw4nWibsuLPKbKL23lUsqC7prp8Mkgn3+GpueA1/CN9qvcQSTrLh9N90yIwbWk1
	OgekdarouXSTjKXjBTIAqZaBzkkTZwBfCXkP6LPRRNi7dnftUf7HrWQ5QdGVhZcVCIhOYY73jKp
	hMnyO1CuJ03fSP/ljczuiF/BytGWOf4kIG3U1mvlsojAH4zweZGtPaum733xhucueJb94sH1eIK
	sbwPDK6EJKhF/G5oDg==
X-Received: by 2002:ac8:7e8f:0:b0:50f:817c:5d45 with SMTP id
 d75a77b69052e-50f817c676cmr442478311cf.23.1777292391770; Mon, 27 Apr 2026
 05:19:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260425031011.2529364-1-dennis@ausil.us> <20260425031011.2529364-7-dennis@ausil.us>
In-Reply-To: <20260425031011.2529364-7-dennis@ausil.us>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 27 Apr 2026 16:19:37 +0400
X-Gm-Features: AVHnY4JMQA7P3RUKZV7Q2ZiP4ijZr_0utVOWXuWYUEbZIgaWmckkoQwwj3mXN60
Message-ID: <CABjd4Yw_bqi-Lj5MX--y34X_4GZPwa+ajwRGim7=nLGdqEOjEA@mail.gmail.com>
Subject: Re: [PATCH v8 6/6] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Dennis Gilmore <dennis@ausil.us>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_051956_523753_95F85BC9 
X-CRM114-Status: GOOD (  13.16  )
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

T24gU2F0LCBBcHIgMjUsIDIwMjYgYXQgNzoxMOKAr0FNIERlbm5pcyBHaWxtb3JlIDxkZW5uaXNA
YXVzaWwudXM+IHdyb3RlOgo+Cj4gQWRkIGRldmljZSB0cmVlIGZvciB0aGUgWHVubG9uZyBPcmFu
Z2UgUGkgNSBQcm8gKFJLMzU4OFMpLgo+Cj4gLSBlTU1DIG1vZHVsZSwgeW91IGNhbiBvcHRpb25h
bGx5IHNvbGRlciBhIFNQSSBOT1IgaW4gcGxhY2UgYW5kIHR1cm4KPiAgb2ZmIHRoZSBlTU1DCj4g
LSBQQ0llLWF0dGFjaGVkIE5JQyAocGNpZTJ4MWwyKQo+IC0gUENJZSBOVk1lIHNsb3QgKHBjaWUy
eDFsMSkKPiAtIEFQNjI1NiBXaUZpIChCQ000MzQ1NikgdmlhIFNESU8gd2l0aCBtbWMtcHdyc2Vx
Cj4gLSBCQ000MzQ1QzUgQmx1ZXRvb3RoCj4gLSBlczgzODggYXVkaW8KPiAtIFVTQiAyLjAgYW5k
IFVTQiAzLjAKPiAtIFR3byBIRE1JIHBvcnRzLCB0aGUgc2Vjb25kIGlzIGNvbm5lY3RlZCB0byB0
aGUgU29DJ3MgRFAgY29udHJvbGxlcgo+ICAgZHJpdmVuIHRocm91Z2ggYSBMb250aXVtIExUODcx
MVVYRCBicmlkZ2UuCj4KPiBWZW5kb3JzIHNjaGVtYXRpY3MgYXJlIGF2YWlsYWJsZSBhdDoKPiBo
dHRwczovL2RyaXZlLmdvb2dsZS5jb20vZmlsZS9kLzFxczFEcmF0SHVoN0M2SjZNRXRRSXdVc2lT
cmc4cWdUaS92aWV3Cj4KPiBTaWduZWQtb2ZmLWJ5OiBEZW5uaXMgR2lsbW9yZSA8ZGVubmlzQGF1
c2lsLnVzPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAg
ICAgICAgfCAgIDEgKwo+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3JhbmdlcGktNS1wcm8u
ZHRzICAgfCA0NDAgKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNDQxIGlu
c2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LXByby5kdHMKClJldmlld2VkLWJ5OiBBbGV4ZXkgQ2hh
cmtvdiA8YWxjaGFya0BnbWFpbC5jb20+CgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
