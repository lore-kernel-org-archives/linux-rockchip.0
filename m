Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 228FBC47422
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jan 2024 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jY+jSXua/ATBOu7tUZhb2Prubc9BN6soC3a2F1fTcw8=; b=B1pbzuOkseUQDG
	utq/MVAlUtbjSyHB8WG7avwaJ+MZHvbR/v0XN9U4M/ay0JjpWOA+XY7otboi1F7wpOjKrr0Kqcxn2
	zvS4HxTnGlgFMDv7Oar0F9I/2Gd3Tl1E8Qu7mWvb4uCRoJd5THDU5ujEGI8P1ztt/2IiDuueTSGR6
	UD4Mh+78ouYMIOAkZtn3uiz5WBzXlmN8FRjK5i6kCnTOlEuyQ1GN0h+KZStgCpN8n/aLSqiLD5/l/
	JweEWsfbRljde8WYRxNC3rHM/eZoODuLGX3LxE1cPU3g0Bs5IGx2prv7uMSjMm25VJX4d5TmrLKQf
	0vuwFOxfvJ0oVxUo1Glg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQaBQ-003vkV-1V;
	Thu, 18 Jan 2024 21:44:20 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQaBM-003viA-2D
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jan 2024 21:44:19 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-dc25099b084so145889276.0
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Jan 2024 13:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1705614254; x=1706219054; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dxW94Xo16tN4F2/zNoyofSr34Bz4H0NPwZaMM3AQ/g4=;
        b=3UytbIuOtFYu/v1WzA5UOqbOrLF2on7Pw9iZOkvvY5s1tgFF7F2mE/frMRv2nmxJBE
         qmMw8mMQxcWupejjV2NGIwIyY907csdOkrZTjy+MfWHE61peCAy0ZscEam4UGoK+K/rQ
         7TUQB9TFbAakrjtE8K5naa16mw6clKCX3zfkP+Xrjhl/k23bYJ4/2SM/0k5t5p8XFt9w
         lz7v3ldpy5AWKenMH4VV2S+Hc5yxLpL1ajRSG+XbGjyNZVkfgSilcAuWWMoVJegugz3G
         189VMKcF5QG13FmCJsKVeKT7c4mVAARBalZzZES9XyPPa5XnE053zoyZYIaqRAEuRdrj
         xBjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705614254; x=1706219054;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dxW94Xo16tN4F2/zNoyofSr34Bz4H0NPwZaMM3AQ/g4=;
        b=ita0PPoz8odFYs7ROYKHBCemtUkKscJ7hxyziWUbCzvsW8ayUwBd6XzuEIezRLyx15
         OwjAzazR/0vouu2gkG/bS1SOI0L7CRlTRZhcywbZpFlYltP84e8ezrF01bhjvwdjFabU
         hYnHAdlobKjfKxZhWgj2cKj6t9NIiVHKKjTv2YMfxXUi3l95uS2MUTwCRjAfSAL5OH/A
         WirFCJplo7IwGsPuJujTml+6tuwu4SVbPWK03oeVJrUrV0E+jyL8HUHpYkzndfk7siM+
         JcBjSckVPJmrVOqjobNP/uJPDlq9FjVe3Abl+kR6MuOzMphE3+Sip5MprHlxckKnnepJ
         JTEQ==
X-Gm-Message-State: AOJu0YyLE99YCbRFRZkMCGvudPEUNfl+Gwhus5tEqMPYrnd5lyj0bbth
	M/EhUySbdls1CxAuPBjavQpNTwnIRp4N+F4TGkku4qd4XilUYK4OhgYfkeKTnd8=
X-Google-Smtp-Source: AGHT+IFTpM/j9s/7BU5IuSX0nDJIeasuF97xldX5n/sHZyCswVJRa7EtsNcn/HwcYXNLgvUGcRpk9Q==
X-Received: by 2002:a25:d712:0:b0:dbf:22cd:b59d with SMTP id o18-20020a25d712000000b00dbf22cdb59dmr1343391ybg.101.1705614254061;
        Thu, 18 Jan 2024 13:44:14 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:3354::7a9])
        by smtp.gmail.com with ESMTPSA id on32-20020a05621444a000b006819a675e24sm346382qvb.69.2024.01.18.13.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 13:44:13 -0800 (PST)
Message-ID: <2f1f5657d0d16821f6fa1366f99b5ee5d8ae7fdc.camel@ndufresne.ca>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add Hantro G1 VPU support
 for RK3588
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: amazingfate <liujianfeng1994@gmail.com>
Date: Thu, 18 Jan 2024 16:44:12 -0500
In-Reply-To: <20240118080602.9028-1-liujianfeng1994@gmail.com>
References: <e01c9ab69f3e120cdb9b70fbacebbab32d5abba4.camel@ndufresne.ca>
	 <20240118080602.9028-1-liujianfeng1994@gmail.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_134417_735282_B0BA19E9 
X-CRM114-Status: GOOD (  10.16  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de, sfr@canb.auug.org.au, knaerzche@gmail.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, ezequiel@vanguardiasur.com.ar, krzysztof.kozlowski+dt@linaro.org, p.zabel@pengutronix.de, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TGUgamV1ZGkgMTggamFudmllciAyMDI0IMOgIDE2OjA2ICswODAwLCBhbWF6aW5nZmF0ZSBhIMOp
Y3JpdMKgOgo+IEhpIE5pY29sYXMsCj4gCj4gV2VkLCAxNyBKYW4gMjAyNCAxNDoxMzoxOSAtMDUw
MCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiA+IEluIGdlbmVyYWwsIHdlIGFzayBzdWJtaXR0
ZXJzIHRvIHNoYXJlIGEgZmx1c3RlciBbMF0gc2NvcmUgKHRoaXMgaXMganVzdCB0bwo+ID4gZGVt
b25zdHJhdGUgdGhhdCB0aGUgaW50ZWdyYXRpb24gaGFzIGJlZW4gd2VsbCB2YWxpZGF0ZWQpLiBM
aWJyZUVMRUMgY29tbXVuaXR5Cj4gPiBoYXZlIHBhdGNoIHRvIGVuYWJsZSB0aGlzIGZmbXBlZyBm
b3JrLiBJIGRvbid0IGV4cGVjdCBhbnkgc3VycHJpc2UgaGVyZSwgYW5kIHlvdQo+ID4gY2FuIGp1
c3QgcmVwbHkgdG8gbXkgZW1haWwgaGVyZS4KPiAKPiBIZXJlIGFyZSBmbHVzdGVyIHRlc3QgcmVz
dWx0IHdpdGggZmZtcGVnIHY2LjAgcGF0Y2hlZCB3aXRoIHY0bDIgcmVxdWVzdCBwYXRjaGVzCj4g
ZnJvbSBMaWJyZUVMRUMgYW5kIGdzdHJlYW1lciAxLjIyOgo+IGh0dHBzOi8vZ2lzdC5naXRodWIu
Y29tL2FtYXppbmdmYXRlLzE2NzUzODlkZjM4MmZmMjY2ZDZmMTMxOGZkNDY3NWZkCj4gCj4gSSBh
bSB1c2luZyBLd2lib28ncyBmbHVzdGVyIGZvcmtbMV0gdG8gcnVuIGZmbXBlZyB2NGwyIHJlcXVl
c3QgdGVzdHMKClRoYW5rIHlvdSB2ZXJ5IG11Y2gsIHRoZXNlIGFyZSB0aGUgZXhwZWN0ZWQgcmVz
dWx0cyBmb3IgdGhpcyBIVywgaW5kaWNhdGluZwpldmVyeXRoaW5nIHdvcmtzIGFzIGV4cGVjdGVk
LgoKTmljb2xhcwoKPiAKPiBKaWFuZmVuZwo+IAo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vS3dp
Ym9vL2ZsdXN0ZXIvdHJlZS92NGwyLXJlcXVlc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
