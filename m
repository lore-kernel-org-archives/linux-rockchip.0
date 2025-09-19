Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8005DCAC592
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Sep 2025 15:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKjqJ1cj6VRn0O91yGqeYUsyvDpUY4HDgI1gr0ezb2M=; b=Z+S1Ul8NEWtUZg
	/dcI5/Zf+ApFvyfZpmmhmPGwKG2VUZ9FExW/PDD6EwzVfbGmkAUe8hxxVPS8Ge+tIT48uPZtoMlas
	tuDlSXaK+WGNKWoSLqhue0uF5MMjp0h0AX8MsONHsff2borPJvvcbxF1jEbWEdIJ2BRxwGOnJ9CrC
	YyR6dZFSWyY1ZD8DwMH31MfMHQdzrCgV+dOufHpQH/pxbjIqqTbuNkrUoXk89JvmfhjT9GFsoinin
	3ptRZG9SXTlXu28qn+qVCrbwFFNgA2zfEifCxlJTRW6yvzg8gJErJH35RFIWZkgZtNHgP7P5/lELg
	21bwFXZ4UuVgmJK1yJxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzdSk-00000003QMI-2ZGE;
	Fri, 19 Sep 2025 15:55:54 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzdSh-00000003QJV-2iKh
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Sep 2025 15:55:53 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-45dde353b47so12362915e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Sep 2025 08:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758297350; x=1758902150; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BhZDrVrImTATkIwPwVSPaOLUpr64DrnZU8w+ycyCg88=;
        b=lGqK2rb3PP8EK/82YHJgjFuPt9Fy7EB92Nm5Kkoyrt6g+Nn68snjxWvGhdPQpgLGkg
         y/9HVG/aW0+0qqY0/i/f3uFx7tJUrSEr7k4jR34U/E7LSEjH7ayblV7vmIB67h9yANsV
         hdvHSO1wsa9CxhYPoCWCfU5s2uFx91vfRMeqQLNoStkCmMZ1JvhzPFFZJwsrGHNkadwB
         Ff2E4AcfZVnyznRR288GijCnCljpOcO1F4mMeWpX2JSefbcFf/o4A/FtAQie8wenU1G7
         ZyIu/UHpoErVgoO3OGD3Fx+D7KpPSYAJGvHfnrc/dZnw6Hw077plE/uuEZvhEjTpEgCL
         +gqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758297350; x=1758902150;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BhZDrVrImTATkIwPwVSPaOLUpr64DrnZU8w+ycyCg88=;
        b=ApjPFBMwwdKROLkmMVP67jiJvnM/9UpPVV9VMs+m41qpH4WMm5Kqf6cRnvyGgLLbDC
         kR1xaZN8xGni6FdByUacTU+OjU/HZ/Hw1spTO96JdcEiKWgAWYW87MFogwUrkOth6USt
         l8GydxcGFOGP7yC/sm2G4R7lPI9vSn8IFmgjTxkQAUgPMWs83NH4oifUolvJPFb3Azeo
         5J/QrYXtiKW/2NLnJUsmX+LShHTSblHSHIRqMSBDDKceshbvXFJGu/w2l2WGfFBFekgT
         nxmXqLTX4YBfxCkYIAAXNYtHxsX2c2tGrRMP52EwHu4xz9PLfbacMG0F20JWlw09IxSa
         vTOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhAeCNqYRbBxSL1OM0Tc40lRsLXzfGRj4vu+6+Oe3Z4PwAHAKDSAFVLhcCj6z0ZkSP/oHtu97gtbzPCy1Xcg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyMLejTKQ3n631oRGtqv6mCsG+b6mUaEKEtO7qwNvh13dwzd3Mq
	enh7KNmnp2MDOPE5UCWKQ5flNN9MQLEnn6Vf/PjNYZABp0m9hqGY+m4R1mwEXFzzSMs=
X-Gm-Gg: ASbGnctR8Mpa4eJwmc8dRujsBKOBqqeTZl53WMgNg2/x/TPz4dxneJoea8LDVajHQo/
	t3LfjteCCMoCi/71y2knTfO1m13rvue78rp1jcgZ4pKyS9UJiZ8jmFlRbxg/Gxcp/zwUFBAzq4l
	bY/NckbAB2ob/Pewf6wXERRNUNtkEOmNpvUn99aAnMBPsLJNSWDqgGW+k9D2gFxZcC/IGVYEROF
	mtIHzxr/Up31cQtrDLrx1XqC30nfmkc2leXFw6ZHQK6wuQinpeTKy9/7iU9z81GlK70dinmgeR+
	vn4RoyTg0pjFFdftcpspzgohyz8OsaVmA5bSJ6nCjqGX9TumTL4n0k0CvB9T5Av4CS0HAi/F3bQ
	PHhmGoh/SG1SdvJNEYOtG7XWvshyc+Uao8/apxJvQwsSrm2pL9IgEfk5c77U/8F4P/ngBi41UHy
	xpiw==
X-Google-Smtp-Source: AGHT+IEl+5i/c6BvX7hOfCLASA8xl2fHCvuhOjlzavUKXNsTQAa1+nFKeMdI1YW8d1Qlc7m1YSon4A==
X-Received: by 2002:a05:600c:548e:b0:456:18cf:66b5 with SMTP id 5b1f17b1804b1-467f205a5a1mr35666935e9.22.1758297349484;
        Fri, 19 Sep 2025 08:55:49 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:8ffd:205a:6719:49c1? ([2a05:6e02:1041:c10:8ffd:205a:6719:49c1])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ee07411f4dsm8371825f8f.26.2025.09.19.08.55.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 08:55:48 -0700 (PDT)
Message-ID: <20f38803-ea03-49e5-ada1-9998eb815f84@linaro.org>
Date: Fri, 19 Sep 2025 17:55:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] thermal: rockchip: shut up GRF warning
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>,
 Diederik de Haas <didi.debian@cknow.org>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20250820-thermal-rockchip-grf-warning-v2-0-c7e2d35017b8@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250820-thermal-rockchip-grf-warning-v2-0-c7e2d35017b8@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_085551_725133_C45DB7AB 
X-CRM114-Status: UNSURE (   9.80  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAvMDgvMjAyNSAxOTo0MCwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4gQ2hhbmdlcyBp
biB2MjoKPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA4MTgt
dGhlcm1hbC1yb2NrY2hpcC1ncmYtd2FybmluZy12MS0xLTEzNDE1MmM5NzA5N0BrZXJuZWwub3Jn
Cj4gLSBBZGQgcGF0Y2ggZHJvcGluZyBleHRyYSBuZXdsaW5lcyBpbiBvbGRlciBjaGlwIGluZm8g
c3RydWN0dXJlcyAoSGVpa28pCj4gLSBBZGQgcGF0Y2ggdXBkYXRpbmcgRFQgYmluZGluZ3MgdG8g
bWFrZSBHUkYgZWl0aGVyIG1hbmRhdG9yeSBvciB1bmFsbG93ZWQgKEhlaWtvLCBSb2JpbikKPiAt
IFVwZGF0ZSBwcmV2aW91cyBwYXRjaCB0byBvbmx5IGRpZmZlcm50aWF0ZSBiZXR3ZWVuIG1hbmRh
dG9yeSBhbmQgbm8gR1JGIChIZWlrbywgUm9iaW4pCj4gLSBVcGRhdGUgc3RydWN0IGRvY3VtZW50
YXRpb24gKGtlcm5lbCB0ZXN0IHJvYm90KQo+IC0gRG8gbm90IGNvbGxlY3QgVGVzdGVkLWJ5IGZy
b20gRGllZGVyaWssIGFzIHRvbyBtdWNoIGNoYW5nZWQgaW4gdGhpcyB2ZXJzaW9uCj4gCj4gU2ln
bmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9y
YS5jb20+Cj4gLS0tCgpBcHBsaWVkLCBwYXRjaCAxLDIKClRoYW5rcwoKCi0tIAo8aHR0cDovL3d3
dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFS
TSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xp
bmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRl
ciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
