Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7FCBEDEBEC
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 19:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BixH/219t+jUWGuwtssT6Wm6yBA/byAfARRdUXoTwI=; b=SVuGi2cNQM89uT
	tI2+tcN1hJp8kiQ1q1dfPF0fNe/g1fgulOEBX+V4gzbMjnOpMu2o9fy6siwFZZatXq5+XItlGNaK8
	Ed83yJrqOH9DODJaYIcxtSV2ARVtojtLhWHKWl1WBKfr4t0bjcPQy7ljtTniQjmDxfrvBh9B+4xQ4
	I0Fb1Bqqev0rFQu+t/dEZ55y3NtpzvA5MDLibKIBkoYMMeuhRt7S+XgHOnXqG/PyYutnlKaFWnVxL
	BCfzKuw8LowqRs23zRUqi8sMiWTC6sWLLQtqedGji5luUNkgLhmtFjnx5HkUVQe6zpZzez/yKK++O
	1U2NHvZ5n6PlofvuhDtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVeH-0000000FpiN-19ZW;
	Tue, 03 Mar 2026 19:43:17 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVeE-0000000Fphb-1AZa
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 19:43:15 +0000
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-89a018cbbf8so25671226d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Mar 2026 11:43:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772566993; cv=none;
        d=google.com; s=arc-20240605;
        b=FL3NBFvXqVtdnwDmUDPReRje8i8PoMiugFPCYGSaxcrTTr+o2o+sPrfNpZnVKfgPJX
         RJDVkWOjxd1WMCeuPxyGA1pt477fT1wnFtAB4BY58ARJhs8fz5DkK3vyWs3szhKVtw94
         ew1lWAyc1Zbk0zq+U9WVXRiYk7DLKXcCKVI/gPvjRnIPm16OO5CRfPx3KiBVt6o2k3cV
         RP/tIFpwpEfnmroc/NRbXpiZa8BELwVrt3pO759b+ZhmtZIcSshcnC8AZY/TxINGh84U
         RV1BY/j5aLv7SJDUnkpfeHPz664hkdIhAZ98tCYraTSL10YAec5TjenNqGRL+jroUcXq
         Av7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=L8n8435Zr1khu5rLcpa1RouqYs6DNDPzPkSmUCRdtj8=;
        fh=e8rTtuef2V3qxf6KTjV0z5HvIY9man/nKI33EUzOFyM=;
        b=bZHKFn5xMj0HSkYBpjCbBCyUqxjfDI51QD3zi8n7RFpQf3xoa8/GPwYUlD1/38//k6
         wtEf9Vk4c/1mItm6EfQxBnVcqK8JyLFlNzGv9BUxG5zYBw/3XMyyJVnBpoYM+o7eU/Lb
         8pLTeF+29CFAuJMi1ehgokthgi+yHr4cDv9ObGWSjGpT1iTfLX1yzAihP0l/Pp95T9cD
         Hhj7saDykz+YRKWEElylFo9QNfSTwT79nZnsIF0wT4RNCOfgOWaoY6ht/K8SodtS09+2
         GJoLdrJU1wkTRzMxcLl7x9h7EvhkRkTO4I2F6DBqXScPejvzuuYvFZGGE+RvZbblSqWg
         +bxg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772566993; x=1773171793; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L8n8435Zr1khu5rLcpa1RouqYs6DNDPzPkSmUCRdtj8=;
        b=bhoJcWTxZX0il9HX6zExB0HO81u3zxP3wEfxVHlTkUaTCK1y2LudWvgHttFcKLdyey
         b8JPHXXLfXyA/9/Tq0kJg2iyXwkBLzkS41k7zFfuEH6c+akt5hCimale3p+kFwWKH+YS
         ARdM96V7VvwYJgKkxxW/c8n3ZyieAX+Y0y5gvDWSQQ0hGPUth7gI71MY1zFVYtQGebmc
         Dfwd1qLhwP0pzmqjTuq6q6zSK7gQjvAQxwgTPnaN4FktY5UspMXQoTpnho78uMvA6/Gf
         tM5jr5QrjxXmdKuN4oBI9VWerPGan0dIeKUrqQVodOY0AIoqzaMuFddyQ1JRv5E9vNKi
         I6qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772566993; x=1773171793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L8n8435Zr1khu5rLcpa1RouqYs6DNDPzPkSmUCRdtj8=;
        b=j4uDK4Plck3oo2b2qQOMbKNx2Jax9MeQ1bzC+ht1yVoYUKpb3lDuNWdBCjoGUgnuvg
         00dJt0qtY9+flOhrG2kC3OVs+cbOvUSiPAhuy8VezTZD/3DvnNy60OUnBzrRiT6Kbdc7
         22C87G1J1z8k2Ejp7qVB2mhgsiz2OG/KB5jBX2yJWq1FhU+jrN9G8kSp5WlK+hhmNjS5
         Gyt5uG1yrZODi+Qt3/30zM62NDTam4vRU/TZlzhx+q4TyMlYGaoeP4prEBbcRwXFeuBD
         C7JI0h21pXPvHhiICfeaMYaoZeOXo7cus+YTd+amrTEJogkqkdBFLaxbkChrN7Cjx2MN
         h6Wg==
X-Forwarded-Encrypted: i=1; AJvYcCV5+gpa9VQzh3h/Vs2sU6tQmaM+QJ3XbqMrtsUjcOfk16xK7f2tvYrE+On4XTSkjlcl2PT+zSkbWaaXGlaxWw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywl1k9VmEvhzcDOfey51b7xBmf40A8S774gklEHuSdULTaoyPZE
	NeImoQeuy/7MQfHjwkQ0+o7DR1rYvvZ02qmkaLKIowjo6q+RVbODW4pNOhkDalrFLVYeyR516mM
	d9AmeZx5jOZCZx3P2mpjZHtpctrxHCPP1Ff4G5mkgFw==
X-Gm-Gg: ATEYQzzbX9Ih9+FuwMYQUjaByPNKNzm6PKtmRN9F0EIETmBRIB2Vdcv2CFJzcAniKZc
	VQM56fVRnIUDELbhNM8MkxettKujXwvuph9YtSpp6sb1buBOl1ncyeyKPY0YgaU7V+CJTZpSXCZ
	i+E21RgMy0K+41Nix4HGQyxIRhbSGO7iWeEiBpnsodnYKl8Mj82sCu5hKPSxpBNDN2g5GOIG30K
	3NfOTdnYCMQuP5TjHohUI8lY+YQuaQFctNgJu0C6Thr3h7j1/J/XhOgKbWItdTTl7h5aO309t5a
	NOoDUXjD0z6K7Cv+nnRm7lpgqChjzj+CrrXkGyJFU422MBwQCZ5wDNRUMHGm/7zVZGnyNss=
X-Received: by 2002:ad4:5aa7:0:b0:89a:e8:d188 with SMTP id 6a1803df08f44-89a0a8d7188mr45825626d6.20.1772566992620;
 Tue, 03 Mar 2026 11:43:12 -0800 (PST)
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
 <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com>
In-Reply-To: <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com>
From: Dennis Gilmore <dennis@ausil.us>
Date: Tue, 3 Mar 2026 13:43:01 -0600
X-Gm-Features: AaiRm52nwTc5WYofSGOqwEBnZSvdAzLbNGmLH2WcJSTdxX_MUmE39dck-KQ4XU0
Message-ID: <CAABkxwsJ2ZnytCcHEvXWzNkjwzNThoTR23FAeHJLdf4JjXJEMg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_114314_334155_CB6070EA 
X-CRM114-Status: GOOD (  11.22  )
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

T24gTW9uLCBNYXIgMiwgMjAyNiBhdCAxMTo1N+KAr1BNIEppbW15IEhvbiA8aG9ueXVlbmt3dW5A
Z21haWwuY29tPiB3cm90ZToKPgo+IEhpIERlbm5pcywKPgo+IFNvbWUgY3VyaW9zaXRpZXMgYmVs
b3csCj4KPiBPbiBTYXQsIEZlYiAyOCwgMjAyNiBhdCAyOjU04oCvUE0gPGRlbm5pc0BhdXNpbC51
cz4gd3JvdGU6Cj4gPHNuaXA+Cj4gPiArCj4gPiArICAgICAgIC8qIFBybyB1c2VzIGdwaW8tbGVk
cyBpbnN0ZWFkOyBwd20wIExFRCBpcyBub3Qgd2lyZWQgdXAgKi8KPiA+ICsgICAgICAgL2RlbGV0
ZS1ub2RlLyBwd20tbGVkczsKPiA8c25pcD4KPiA+ICsKPiA+ICsgICAgICAgZ3Bpby1sZWRzIHsK
PiA+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImdwaW8tbGVkcyI7Cj4gPiArICAgICAg
ICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICsgICAgICAgICAgICAgICBw
aW5jdHJsLTAgPSA8JmxlZHNfcmdiPjsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICBibHVlLWxl
ZCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBjb2xvciA9IDxMRURfQ09MT1JfSURfQkxV
RT47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9IExFRF9GVU5DVElPTl9T
VEFUVVM7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzEgUktfUEM2
IEdQSU9fQUNUSVZFX0hJR0g+Owo+IEhvdyBjb21lIHlvdSBkZWNpZGVkIGdwaW8tbGVkcyBpbnN0
ZWFkIG9mIHB3bS1sZWRzIGZvciB0aGlzPyBHUElPMSBDNgo+IGlzIG11eGVkIHdpdGggUFdNMTVf
SVJfTTIKCnRoZSBkb3duc3RyZWFtIGR0cyB1c2VzIGdwaW8tbGVkcyAgdGhlIEdQSU8gY29tZXMg
ZnJvbSB0aGUgc2NoZW1hdGljCgo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgbGludXgsZGVm
YXVsdC10cmlnZ2VyID0gImhlYXJ0YmVhdCI7Cj4gPiArICAgICAgICAgICAgICAgfTsKPiA+ICsK
PiA+ICsgICAgICAgICAgICAgICBncmVlbi1sZWQgewo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgY29sb3IgPSA8TEVEX0NPTE9SX0lEX0dSRUVOPjsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGZ1bmN0aW9uID0gTEVEX0ZVTkNUSU9OX0FDVElWSVRZOwo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8xIFJLX1BDMiBHUElPX0FDVElWRV9ISUdIPjsKPiBIb3cg
Y29tZSB5b3UgZGVjaWRlZCBncGlvLWxlZHMgaW5zdGVhZCBvZiBwd20tbGVkcyBmb3IgdGhpcz8g
R1BJTzEgQzIKPiBpcyBtdXhlZCB3aXRoIFBXTTNfSVJfTTIuCgpBZ2FpbiwgdGhlIGRvd25zdHJl
YW0gZHRzIHVzZXMgZ3Bpby1sZWRzCgpEZW5uaXMKCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICBsaW51eCxkZWZhdWx0LXRyaWdnZXIgPSAibW1jMCI7Cj4gPiArICAgICAgICAgICAgICAgfTsK
PiA+ICsgICAgICAgfTsKPgo+IEppbW15CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
