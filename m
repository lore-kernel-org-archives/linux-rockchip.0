Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9119FED2D1
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 06:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxzlyUKvswgSe66blKzjENUVRFp/2N/qUCMH2E1KEvg=; b=WEwTNkD5divHpF
	l/3JpbpA8XZ6b4xUDe4kNA4OWS+giz/n621fkAMlN/a/Kj5VI4fzXxPO54CRmOf+eBuGeih5j8f6k
	ytNHkAnVAsGhyfQLr6Oh3hxhg9UP+oD+2Knm4QI/+f/j+YjNJULESanGPNmU3uYEwQA6iEwfAWBK5
	l+2dLkFquv6wbY79xcZb/l4lUXrxGyK3ypTbkoirLTfHhcNu5pjVy833dCrRuEoFeWH7IdENgR7Uq
	t/Y2rhkgHSXImaULjcQ7o6PM53MrAYZ286o5EQJTFHm3mMLk8SUyEQGRYaFrXpL61gBr21ZLjoKdw
	9QU8BaELMg/pEJ0vN+UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ZwR-0000000DUti-1uxG;
	Thu, 12 Mar 2026 06:54:43 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ZwM-0000000DUsK-25z6
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Mar 2026 06:54:41 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-661568ce781so821486a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 23:54:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773298476; cv=none;
        d=google.com; s=arc-20240605;
        b=LsqjzunUdwpT3NLOoVN9iqFfaLx1TM6CXYJuWLfoZ6LGc4bLhbLqtwHqK62K94nrFc
         1YEGB+ygcr/BDfHwWa1OrjO0A/WJTunT8+oaLCgAKVCtAUTO+7mfAuCAMVY7cdEaVoCD
         H9vgI2m5BWg6+4qOyScUcUJbNtSDV2aN7uN+SCOeER4TVv1Fe4nuQWxSqWXg0sFzoO0y
         AhnhgZT7XaMrUnPkprz9VJt07IZ0zOJnrHeHLFxsl3U7bd4gqT04iYM714R0FKo5JR7+
         KXRHElBrdGcfAv7fWFGA0PswfFeuSOMJf9qyriVPj6Q0XWwt+nD15jJKDDa+dli+m8xd
         6Qiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6oVguTUzToSREXHO6bdHcFzlyooNi+O9a4UrcClhK8M=;
        fh=zE/FW/SX5bNPa59s8v703ojft3/sbeeIC0ehaMtETZg=;
        b=hNelKq3qPO160NSt4yTPdnda5hvzqMORp8CCp7I3Jeb8mP2PokM58BH7mSWbwy49hc
         w7Ot90f1+ArI1PjRy1Rfu37LeQdQBZYRcwCHMlkytGXESN4rU3A7gi8p3s3yAfXwS/LZ
         5jhn39deU2a5EKQHc1L8RdpoNc87a9OQ+2ee8I63atSC1jRhlS6/qL1Z5k/t+PjShT5R
         nMvP3jaIiEPMDg9sNVq+2BrOCxlY+85GVbYc1psz3nAE9yUMlCyvHI5VjyWLNE3rSNLe
         G9ecjw9DZhO32q4BBjMqTrHbPvSAOM8Lza0NTSCg2mXyhtsj4YYuxB/w930Lvn5kzUjw
         s+BQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773298476; x=1773903276; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6oVguTUzToSREXHO6bdHcFzlyooNi+O9a4UrcClhK8M=;
        b=aUhIrpXbH3IFrZ4TWHzOlO8UdDTXJjk4oFysLaAfB21QIwCNTVxcPYVX/TP72z+/Tp
         F42/id2JytHLciakHO/9Mvq8cwesOqc0jv0ne4FrexlDM5kZ3rv1Ef1Ac6v94DhYJ2RP
         jCPa5Vpyqwaykse07NOC3pZOCEkWjl6i624YkkAjuqtwOkUi8w68MYBYt1xm/VpCte1Q
         RK2HCuC7XSkVB1hiFAubBnDexLqPFG5FkjLPYgzPYcw7QwINUBMNsqDktuvV5gX7mI1G
         JS6wl4MEpPooVQk/Ess8O3DxvsnsY46+8U022XJf447NkRP9QjJ+2IVnU0J1if6H63H0
         18XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773298476; x=1773903276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6oVguTUzToSREXHO6bdHcFzlyooNi+O9a4UrcClhK8M=;
        b=dWN3RnSIvURnG6FuLXmHcg3WJXLmHigMCxlot4oc5xVOOLefx1SZnhhTKVrawj/MNF
         AHtoTbfqKNieztMXP//WWpaW/egyE2/xVDIQ0QIWZ+BdVueruEDHG3iFBsOlRYrwrXV6
         vTVK/R6EjxvqhxcKTVqGwHhqYp/WpEh2LuYFHPAK8YRhql9gbBCoye9bpplili9ffC8u
         WYwaghgqeRaWPmfPVBQdVB0tXbp3NnoqjqiLYtlC/+JfnjBmLRpoqoqpLD5iVVL/b+4h
         aR2o52rjj1j/B5v6N0oxwlM/TCbQzJFWcJKI9FiY6PEac+938B2M24bZwGMtBV6ztIIo
         zTbA==
X-Forwarded-Encrypted: i=1; AJvYcCXD4ywX8wA319s3xDNTUA04PSYXn7Sg32q0xJ9JuRFOarjIHONYA8VzbM03OoGNNWrQBIKc/Q7ZGUWcbxbVow==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxv8rnWBLB6JEPcraWqH84HzYJloDa/d42Bdf2rmZitJnM7wbbM
	jfnp92IiI3NjmWkW/sHjxBy/qCNm3IIwvKG5nmjCx7M9GcJM8V/kCvvA2jIJ2ojQReicWbS5kd1
	gbQMjoRGb/1GK/QCFJrSEmtY5o/lZ701nv1KHpcMciQ==
X-Gm-Gg: ATEYQzy5A1Kbm6Npdmm3WJkcLJCBx6Dmr97ZPFdyPQ07t2oN1aNxJq9XoyaUEPaRg3N
	hpSKgkwGpeA8GPTACXdq9IthnwV6ZKTxb38cjv1HFAlkeGyqtCAxufLY4u41ol4rTua97KHqqHc
	Nyr48G+vJMbAs1dYRCiI223ibZ89bL4SyuiTQp/CUtNvFlzCdn4+C8QxZCDxnHoL79IbzZ6hpPG
	WYIoKxLXl9B6uTZPLxRPIthj+FPG+H1XgiDwCDtpbhns8xSE3mLjK3gS3/cwwZHtWUw8nInRsvX
	JWRybNY=
X-Received: by 2002:a17:907:e107:b0:b97:3bbe:e42b with SMTP id
 a640c23a62f3a-b973bbef8dfmr132912266b.28.1773298475586; Wed, 11 Mar 2026
 23:54:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net> <802df30e-607b-7404-6693-6691ea45618b@manjaro.org>
In-Reply-To: <802df30e-607b-7404-6693-6691ea45618b@manjaro.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 12 Mar 2026 10:54:21 +0400
X-Gm-Features: AaiRm50M_qGeqn0F08G8Ku0uzvOc6xLaJrTU2Ngsn_GnwpJNfaW5F6HrcA9leKI
Message-ID: <CAKTNdwH-dPdKyN9-ohWj4PCfRZ-DzpG-aysoULMPb=-XzJTwPw@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add HUSB311 Type-C controller
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Gene Chen <gene_chen@richtek.com>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_235439_654105_0E8F13C8 
X-CRM114-Status: GOOD (  19.19  )
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

T24gV2VkLCBNYXIgMTEsIDIwMjYgYXQgMTA6MzLigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBIZWxsbyBBbGV4ZXksCj4KPiBPbiBXZWRuZXNkYXksIE1h
cmNoIDExLCAyMDI2IDE3OjIwIENFVCwgQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5u
ZXQ+IHdyb3RlOgo+ID4gSFVTQjMxMSBpcyBhIGRyb3AtaW4gcmVwbGFjZW1lbnQgZm9yIFJUMTcx
MUgsIHVzZWQgaW4gUm9ja2NoaXAgUkszNTc2IEVWQjEKPiA+IGJvYXJkIGFuZCBzb21lIG90aGVy
IGJvYXJkcyBjbG9zZWx5IGZvbGxvd2luZyB0aGUgcmVmZXJlbmNlIHNjaGVtYXRpYy4KPiA+Cj4g
PiBUaGUgZXhpc3RpbmcgUlQxNzExSCBkcml2ZXIgc2VlbXMgdG8gd29yayBmaW5lIHdpdGggSFVT
QjMxMSwgYW5kIHRoZXJlIGlzCj4gPiBubyBwdWJsaWMgZG9jdW1lbnRhdGlvbiBhdmFpbGFibGUg
Zm9yIEhVU0IzMTEgdG8gaWRlbnRpZnkgYW55IG1lYW5pbmdmdWwKPiA+IGRpZmZlcmVuY2VzLCBz
byB0aGlzIHNlcmllcyB3aXJlcyB1cCB0aGUgZXhpc3RpbmcgZHJpdmVyIHRvIHRyZWF0Cj4gPiBI
VVNCMzExIGluIHRoZSBzYW1lIHdheSBpdCB0cmVhdHMgUlQxNzExSC4KPgo+IEknbSBhIGJpdCBz
dXJwcmlzZWQgdGhhdCB5b3UgaGF2ZW4ndCBtYW5hZ2VkIHRvIGZpbmQgYW55IEhVU0IzMTEgZGF0
YXNoZWV0cywKPiBiZWNhdXNlIHRoZXkgYXJlIHNlZW1pbmdseSByYXRoZXIgZWFzeSB0byBvYnRh
aW4uICBJJ3ZlIGdvdCBhIGNvdXBsZSBvZgo+IEhVU0IzMTEgZGF0YXNoZWV0IHZlcnNpb25zIHdp
dGggdGhlIHJlZ2lzdGVyIGRlc2NyaXB0aW9ucyBhbmQgd2hhdG5vdCwgd291bGQKPiB5b3UgbGlr
ZSBtZSB0byBzZW5kIHRoZW0gb3Zlcj8KCkhpIERyYWdhbiwKClRoZSBvbmx5IG9uZXMgSSBjb3Vs
ZCBmaW5kIHdlcmUgdGhvc2UgSSBsaW5rZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlcwpmb3IgdGhl
IGJpbmRpbmdzIGFuZCB0aGUgZHJpdmVyIGNoYW5nZToKTGluazogaHR0cHM6Ly93d3cuaHluZXRl
ay5jb20vdXBsb2FkZmlsZXMvc2l0ZS8yMTkvbmV3cy8wODYzYzBjNy1mNTM1LTRmMDktYmFjZC0w
NDQwZDJjMjEwODgucGRmCkxpbms6IGh0dHBzOi8vZGwueGt3eTIwMTguY29tL2Rvd25sb2Fkcy9S
SzM1ODhTLzAzX1Byb2R1Y3QlMjBMaW5lJTIwQnJhbmNoX1RhYmxldC8wMl9LZXklMjBEZXZpY2Ul
MjBTcGVjaWZpY2F0aW9ucy9IVVNCMzExJTIwaW50cm9kdWN0aW9uJTIwMjAyMTA1MjYucGRmCgpU
aGV5IGFyZSBub3RhYmx5IGFicmlkZ2VkIGluIHRoZWlyIHJlZ2lzdGVyIGRlc2NyaXB0aW9uICh3
aGljaCBpcyB0aGUKbW9zdCByZWxldmFudCBwYXJ0IGFzIGZhciBhcyBkcml2ZXJzIGFyZSBjb25j
ZXJuZWQpLCBvbmx5IGNvdmVyaW5nIHRoZQpjb21tb24gVENQQ0kgcmVnaXN0ZXJzIGFuZCBub3Qg
YW55IHZlbmRvciBkZWZpbmVkIGV4dGVuc2lvbnMuIEl0IGV2ZW4KcmVmZXJlbmNlcyByZWdpc3Rl
cnMgaW4gdGhlIDB4OTAgcmFuZ2Ugb24gcGFnZSAxNyBidXQgZG9lc24ndCBkZXNjcmliZQp0aGVt
LgoKQ29tcGFyZSB0aGF0IGZvciBpbnN0YW5jZSB0byB0aGUgUlQxNzExSCBkYXRhc2hlZXQ6Ckxp
bms6IGh0dHBzOi8vd3d3LnJpY2h0ZWsuY29tL2Fzc2V0cy9wcm9kdWN0X2ZpbGUvUlQxNzExSC9E
UzE3MTFILTA0LnBkZgoKSXQgZG9lcyBsb29rIGxpa2UgJ3MvUlQxNzExSC9IVVNCMzExLycgYXBh
cnQgZnJvbSB0aGF0IG9taXR0ZWQKdmVuZG9yLWRlZmluZWQgcmFuZ2UuCgpJZiB5b3UgaGFwcGVu
IHRvIHNlZSBhIHZlcnNpb24gb2YgYSBIVVNCMzExIGRhdGFzaGVldCB0aGF0IGluY2x1ZGVzIGEK
ZGVzY3JpcHRpb24gb2YgdGhlIDB4OTAtMHhhZiByZWdpc3RlciByYW5nZSBJIHdvdWxkIGRlZmlu
aXRlbHkgYmUKZWFnZXIgdG8gaGF2ZSBhIGxvb2suCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
