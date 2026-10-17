Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8051CCA463
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 05:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/WKGC6yLB7HXKNd+RkagX/gVtgAJejcyp8IR/qWIVKo=; b=2uif8vTHTfmvLO
	GXON3TJfb+dETcIyYVBEwW8nKmECWZuavuKsCgfhjWz3qE2bhkxV7L6Z+Z6KEqF4m0+8xQ+ZjIOf9
	Y01TVpXXhZtqh0803xuiKE+wXL6gQEV0i25nQbf8T1HDH9yEoJTV9/TMeJqjt/JaORHWg7SZbOWSF
	+4PYB/R+D97qN/EbFB/omjgDquO332rjeQKsZdSSudXHeuweM78j6Y5upXtf/26Tkz2xh2eAJZDJr
	2kDzr3UVuvx6qI+tLgRzK/z3dJPUGn7ylomCZJLRU5OTCQf1ZVuq96q0/88WY5Wid2S9tl561rksk
	GOLHHE/LTOGJEtnJR89Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxDo-00000004SHd-1Tra;
	Sat, 17 Oct 2026 05:44:44 +0000
Received: from mail-pz2-x04.google.com ([2607:f8b0:4864:3b::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxDl-00000004SGv-2ZMI
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 05:44:42 +0000
Received: by mail-pz2-x04.google.com with SMTP id 41be03b00d2f7-ccc451ef3a7so103516a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 22:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792215880; x=1792820680; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ijVuixKGbcFzhxPljdKSrg9qSldEjkdopCfbyGu/Rtc=;
        b=bWcsiRsHITpRlNyS4W14XKogpYgevsU8JmByNBeFpcTAudol+lGVohf92DkxGqHjQ+
         BUepHJiheqAuRPs8670NCOSlASeiNb3Ze8Y4eoD3R0jzgYiBqLN4Zgcpe43GbWSuy9Wd
         nl0b7xBHHbTxn8Rjs2UYaDlhWLQhaZYhcelThXjOTDxHyIDJw/jdBcrJmMcX24+tjdgD
         Gre98lDmvXh3uNI5EOwsFaVQuzYYFSOSBKAjZ+zVR2LYzbQjKp1y8mOWtskkf2M97VXo
         5qmqYGu+S95SWd7isPMTVFtD2u1Udjxt3vjG6/WJIj59MJc2CBqzHP0b10auc95DTPl7
         pZhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792215880; x=1792820680;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ijVuixKGbcFzhxPljdKSrg9qSldEjkdopCfbyGu/Rtc=;
        b=2KM7eIjSWmq/caovZtTVs/+Fpe69vqRMaZkj4i1Zp60RjDiXKLNbDZ3A2X1XE2AgEa
         1rpvt9rWAlSBpo7YEB+0TwSTE0xAnK2NCOe6pLBWKr3KUQrNcPvI4lcJszczZLgTUWWE
         ZeVuAz/YuO91T/YoX/wyGV3Ms8qD+K1bNP5aOD9625lQnZX9DXfnlvfIhUKgD4Gjxly4
         VWtCXjAv5x6XKTbP6pvJSsLo6xaauApPZx04Hs2gEekD6y6kPWOxjNsYP/XRRkLUVLXW
         fMzOT0CoWvhowQFj5OghsbUtM5DKscE6WGABDzubOgQRVXtuaPPWhJ8FGd8eJHrsGOhj
         56Cg==
X-Forwarded-Encrypted: i=1; AKwUvBwnC/gxOxvgH8yEgiHJczn+zwa7+uzd5qLI/86gCdVeUYqpDncrdX5FDzlFbC6N3n76bcyqhRbXfPTDi69zOA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIy8UibfqmyhHfateTBU7S1SoDXAK45yEbTc6doJ5ay1MUI+5Xy
	Ycr+lew1d75JkMC/awo85GfwUwdYrIt93CrTANU/OhX5Q9HnoKBQKumt
X-Gm-Gg: AYBFou2u3SO+r2xkyjV0P5PQNmwA+PnOLaMdO59i16vwJQ3q4kY/gXTQ4uaVD9vYkC5
	/8FZcUbLvcblCJwtsPGQpIdUupljdjj/paj3uCiAdzcwCP+v15/AaYpVQWBbzrIQAJpvld3qGFl
	ggq7MFFFt6QSoabUWFn72R2dzYOrQaHs4Y5uW+hJY24P44mlX9SynQs7eoAwR+nnnTMB+oTe1Ou
	8xiTZLC97r496s+g1jGtlM7NitSs5GF6llP9E5PFdo5W3rxeYSNtotL7xYX7w85by1qhyn2MW+4
	tyMHiLj2Ztvj1CQCcGUz2oHW/WHM7rpdgcc74NjlZYtinsFKEEX8qTCIIgud5uggZQ/8Z36kxiH
	CEbu02+megTVLD5t4woBAp+IVZrGNCrYLWPWLaE5jRkwsIxClIXPsFSM7VxppOv2MWyq6YcYGhh
	bjFy/y+6stYR8AYh6UPAy4L6YePHyoknwk6QnDOMoqwqT50kitHpMSjRqPVzinxRG5rlBLxw==
X-Received: by 2002:aa7:88c7:0:b0:891:6aeb:84fc with SMTP id d2e1a72fcca58-8a04be250efmr1456271b3a.22.1792215880096;
        Fri, 16 Oct 2026 22:44:40 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f57269315sm1958225b3a.23.2026.10.16.22.44.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 22:44:38 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v12 0/6] net: pcs: add basic support for RK3568 XPCS
Date: Sat, 17 Oct 2026 13:43:58 +0800
Message-ID: <20261017054406.1828061-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_224441_679963_5BD5EF54 
X-CRM114-Status: GOOD (  17.03  )
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

VGhpcyBzZXJpZXMgYWRkcyBwcm9wZXIgU0dNSUkgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIFJL
MzU2OCBTb0MKdXNpbmcgdGhlIGludGVncmF0ZWQgU3lub3BzeXMgRGVzaWduV2FyZSBYUENTLCBh
bG9uZyB3aXRoIG5lY2Vzc2FyeQpmaXhlcyBhbmQgcmVmYWN0b3JpbmcgaW4gdGhlIHN0bW1hYyBj
b3JlIGFuZCBYUENTIGRyaXZlci4KCk1vdGl2YXRpb24KPT09PT09PT09PQpUaGUgUkszNTY4IGlu
dGVncmF0ZXMgYSBEVyBYUENTIGFjY2Vzc2VkIHZpYSBBUEIzIGFuZCBjb25uZWN0ZWQgdG8KYSBO
YW5lbmcgQ29tYm8gU2VyRGVzIFBIWS4gIFNldmVyYWwgYm9hcmRzIChlLmcuLCBBcmlhYm9hcmQK
UGhvdG9uaWNhdCkgdXNlIHRoaXMgaW50ZXJmYWNlIGZvciBHaWdhYml0IEV0aGVybmV0LiAgSG93
ZXZlciwgdGhlCmN1cnJlbnQgdXBzdHJlYW0gc3RtbWFjIGRyaXZlciBkb2VzIG5vdCBzdXBwb3J0
IHRoaXMgY29uZmlndXJhdGlvbiwKYW5kIHRoZSBYUENTIGRyaXZlciBoYXMgaXNzdWVzIGluIFNH
TUlJIHBvbGwgbW9kZSB0aGF0IGNhdXNlIHRoZQpsaW5rIHRvIGJlIHJlcG9ydGVkIGluY29ycmVj
dGx5LgoKVGhpcyBzZXJpZXMgYWRkcmVzc2VzIHRoZXNlIGlzc3VlcyBieToKLSBBZGRpbmcgQU5S
RVNUQVJUIHN1cHBvcnQgZm9yIFNHTUlJIGxpbmsgcmVjb3ZlcnkKLSBBZGRpbmcgYSBSb2NrY2hp
cCBYUENTIHBsYXRmb3JtIGdsdWUgZHJpdmVyIGFuZCB3aXJpbmcgaXQgdXAgaW4KICBkd21hYy1y
awoKU2VyaWVzIG92ZXJ2aWV3Cj09PT09PT09PT09PT09PQoKUkszNTY4IFhQQ1MvU0dNSUk6CiAg
UGF0Y2ggMTogYWRkIEFOUkVTVEFSVCBzdXBwb3J0IGZvciBTR01JSSBsaW5rIHJlY292ZXJ5CiAg
UGF0Y2ggMjogRFQgYmluZGluZyBmb3IgUm9ja2NoaXAgUkszNTY4IFhQQ1MKICBQYXRjaCAzOiBp
bXBsZW1lbnQgdGhlIFJvY2tjaGlwIFhQQ1MgcGxhdGZvcm0gZ2x1ZSBkcml2ZXIKICBQYXRjaCA0
OiBEVCBiaW5kaW5nIGZvciBSb2NrY2hpcCBEV01BQyBQQ1MKICBQYXRjaCA1OiB3aXJlIHVwIFNH
TUlJIHN1cHBvcnQgaW4gZHdtYWMtcmsKICBQYXRjaCA2OiB1cGRhdGUgTUFJTlRBSU5FUlMKCkRl
cGVuZGVuY2llcwo9PT09PT09PT09PT0KLSBHZW5lcmljIFBNIGRvbWFpbiAoZ2VucGQpIGNoYW5n
ZXM6CiAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwOTI1MDQxNzUxLjQ5NTgxOC0x
LWNvaWFwcmFudEBnbWFpbC5jb20vCi0gUEhZIGJpbmRpbmcrZHJpdmVyIChOYW5lbmcgQ29tYm8g
UEhZIFNHTUlJIE1BQyBzZWxlY3Rpb24pOgogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDI2MTAwNjE2MjgwNy4yODQzODU4LTEtY29pYXByYW50QGdtYWlsLmNvbS8KClRoZSBEVFMgY2hh
bmdlcyB1c2luZyB0aGUgUEhZIHByb3BlcnR5IGFyZSBzZW50IHNlcGFyYXRlbHkgdG8KSGVpa28v
bGludXgtcm9ja2NoaXAuIFRoZXJlIGlzIG5vIGhhcmQgYnVpbGQgZGVwZW5kZW5jeTsgdGhlIHBp
ZWNlcwpjYW4gY29udmVyZ2UgZHVyaW5nIHRoZSBtZXJnZSB3aW5kb3cuCgpDaGFuZ2Vsb2cKPT09
PT09PT09CgpDaGFuZ2VzIHNpbmNlIHYxMToKCi0gRHJvcCB0aGUgImRlZmF1bHQgUENTX1hQQ1Mi
IGZvciBQQ1NfWFBDU19QTEFURk9STSBhbmQgdGhlCiAgImRlZmF1bHQgQVJDSF9ST0NLQ0hJUCIg
Zm9yIFBDU19YUENTX1JPQ0tDSElQLiBUaGVyZSBpcyBubyBpbi10cmVlCiAgdXNlciBvZiB0aGUg
Z2VuZXJpYyBzbnBzLGR3LXhwY3MgZ2x1ZSB0aGF0IG5lZWRzIGl0IHNlbGVjdGVkIGJ5CiAgZGVm
YXVsdCwgYW5kIG5ldyBzeW1ib2xzIGRlZmF1bHRpbmcgdG8gZW5hYmxlZCBvbiBvbGRkZWZjb25m
aWcgYXJlCiAgc29tZXRoaW5nIHdlIHNob3VsZCBhdm9pZCAoSmFrdWIpLgoKLSBVcGRhdGUgdGhl
IFBDU19YUENTX1BMQVRGT1JNIGNvbW1pdCBtZXNzYWdlIGFjY29yZGluZ2x5LgoKS2V5IGRlc2ln
biBkZWNpc2lvbnMKPT09PT09PT09PT09PT09PT09PT0KLSBUaGUgc3RtbWFjIGNvcmUgbm93IGRl
bGVnYXRlcyBYUENTIGNyZWF0aW9uIGVudGlyZWx5IHRvIHBsYXRmb3JtCiAgZHJpdmVycyB2aWEg
cGNzX2luaXQvcGNzX2V4aXQuICBUaGlzIGlzIG5lY2Vzc2FyeSBiZWNhdXNlIHRoZQogIGdlbmVy
aWMgWFBDUyBjcmVhdGlvbiBsb2dpYyB3b3VsZCBvdmVycmlkZSBhbnkgWFBDUyBzZXQgdXAgYnkg
dGhlCiAgcGxhdGZvcm0gZHJpdmVyLgoKLSBUaGUgUm9ja2NoaXAgWFBDUyBkcml2ZXIgY3JlYXRl
cyBhIHZpcnR1YWwgTURJTyBidXMgb3ZlciB0aGUgQVBCMwogIHJlZ2lzdGVycyBhbmQgaW1wbGVt
ZW50cyBhZGRyZXNzIHJlbWFwcGluZy4gIFRoZSBnZW5lcmljIFhQQ1MgY29yZQogIGhhbmRsZXMg
YWxsIFBDUyBjb25maWd1cmF0aW9uIHZpYSBwaHlsaW5rX3Bjc19vcHMuCgotIE9uIFJLMzU2OCBp
biBTR01JSSBtb2RlLCB0aGUgTUFDIGNsb2NrIGlzIGZpeGVkIGF0IDEyNSBNSHogYW5kCiAgY2Fu
bm90IGJlIGR5bmFtaWNhbGx5IGNoYW5nZWQuICBJbi1iYW5kIG1vZGUgaXMgdXNlZCwgYW5kIHRo
ZQogIGdlbmVyaWMgc3RtbWFjIHNldF9jbGtfdHhfcmF0ZSBjYWxsYmFjayBpcyBkaXNhYmxlZCB0
byBwcmV2ZW50CiAgaW5jb3JyZWN0IGNsb2NrIHVwZGF0ZXMgdGhhdCB3b3VsZCBicmVhayBSWC4K
Ci0gVGhlIFNlckRlcyBhbmQgcG93ZXIgZG9tYWluIGFyZSBhdHRhY2hlZCB0byB0aGUgWFBDUyBk
ZXZpY2UgdHJlZQogIG5vZGUgcmF0aGVyIHRoYW4gdGhlIE1BQyBub2RlLiBUaGlzIHJlZmxlY3Rz
IHRoZSBhY3R1YWwgaGFyZHdhcmUKICB0b3BvbG9neSBhbmQgc2ltcGxpZmllcyB0aGUgZHdtYWMt
cmsgZHJpdmVyIGJ5IGtlZXBpbmcgYWxsIFBDUy1yZWxhdGVkCiAgcmVzb3VyY2VzIHNlbGYtY29u
dGFpbmVkLiBJdCBhbHNvIHByZXBhcmVzIGZvciBwb3NzaWJsZSBmdXR1cmUgUVNHTUlJCiAgc3Vw
cG9ydCwgd2hlcmUgYSBzaW5nbGUgU2VyRGVzIHNlcnZlcyBtdWx0aXBsZSBNQUNzIGFuZCB3b3Vs
ZCBiZQogIG1vcmUgbmF0dXJhbGx5IG1hbmFnZWQgdW5kZXIgdGhlIFhQQ1Mgbm9kZS4KClRlc3Rp
bmcKPT09PT09PQpCb2FyZDogQXJpYWJvYXJkIFBob3RvbmljYXQgKFJLMzU2OCkKT1M6IEFybWJp
YW4gKHRyaXhpZSkKS2VybmVsOiA2LjE4IChiYWNrcG9ydHMpClJlc3VsdDogVGhlIFNHTUlJIGlu
dGVyZmFjZSBvYnRhaW5zIGFuIElQIGFkZHJlc3MsIFNTSCB3b3JrcywgYW5kCiAgICAgICAgcGlu
ZyB0cmFmZmljIHBhc3NlcyB3aXRob3V0IGxvc3MuCgpOb3Rlcwo9PT09PQotIFdoZW4gdGVzdGlu
ZyBvdXQtYmFuZCBtb2RlIHdpdGggc2V0X2Nsa190eF9yYXRlLCBvbmx5IDEwMDBNYnBzCiAgd29y
a3Mgb24gYm90aCBUWC9SWDsgMTAvMTAwTWJwcyBvbmx5IHdvcmtzIG9uIFRYIHNpZGUuCgpBY2tu
b3dsZWRnbWVudHMKPT09PT09PT09PT09PT09ClRoaXMgd29yayB3YXMgaW5zcGlyZWQgYnkgYW5k
IGJ1aWxkcyB1cG9uIHRoZSBleGNlbGxlbnQgd29yayBvZiBvdGhlcnM6Ci0gU2VyZ2UgU2VtaW4n
cyBTeW5vcHN5cyBEZXNpZ25XYXJlIFhQQ1MgcGxhdGZvcm0gZHJpdmVyIChwY3MteHBjcy1wbGF0
LmMpCi0gQ2zDqW1lbnQgTMOpZ2VyJ3MgUmVuZXNhcyBNSUlDIGRyaXZlciAocGNzLXJ6bjEtbWlp
Yy5jKQotIFRoZSBSb2NrY2hpcCBUUk0gYW5kIGRvd25zdHJlYW0gT0VNIGRyaXZlcnMKClRoYW5r
cyBpbiBhZHZhbmNlLApDb2lhIFByYW50Ci0tLQpDb2lhIFByYW50ICg2KToKICBuZXQ6IHBjczog
eHBjczogYWRkIEFOUkVTVEFSVCBzdXBwb3J0IGZvciBTR01JSSBsaW5rIHJlY292ZXJ5CiAgZHQt
YmluZGluZ3M6IG5ldDogcGNzOiBhZGQgcm9ja2NoaXAscmszNTY4LXhwY3Mgc3VwcG9ydAogIG5l
dDogcGNzOiB4cGNzOiBhZGQgUm9ja2NoaXAgUkszNTY4IHBsYXRmb3JtIGdsdWUgZHJpdmVyCiAg
ZHQtYmluZGluZ3M6IG5ldDogcm9ja2NoaXAtZHdtYWM6IGRvY3VtZW50IHBjcy1oYW5kbGUKICBu
ZXQ6IHN0bW1hYzogZHdtYWMtcms6IGFkZCBTR01JSSBzdXBwb3J0IGZvciBSSzM1NjgKICBNQUlO
VEFJTkVSUzogYWRkIGVudHJ5IGZvciBSb2NrY2hpcCBYUENTIGRyaXZlcgoKIC4uLi9uZXQvcGNz
L3JvY2tjaGlwLHJrMzU2OC14cGNzLnlhbWwgICAgICAgICB8ICA2OSArKwogLi4uL2JpbmRpbmdz
L25ldC9yb2NrY2hpcC1kd21hYy55YW1sICAgICAgICAgIHwgIDI3ICsKIE1BSU5UQUlORVJTICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgOSArCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9zdG1pY3JvL3N0bW1hYy9LY29uZmlnICAgfCAgIDEgKwogLi4uL25ldC9ldGhlcm5ldC9z
dG1pY3JvL3N0bW1hYy9kd21hYy1yay5jICAgIHwgMTMxICsrKy0KIGRyaXZlcnMvbmV0L3Bjcy9L
Y29uZmlnICAgICAgICAgICAgICAgICAgICAgICB8ICAyMyArCiBkcml2ZXJzL25ldC9wY3MvTWFr
ZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvbmV0L3Bjcy9wY3Mt
eHBjcy1yay5jICAgICAgICAgICAgICAgICB8IDU5OCArKysrKysrKysrKysrKysrKysKIGRyaXZl
cnMvbmV0L3Bjcy9wY3MteHBjcy5jICAgICAgICAgICAgICAgICAgICB8ICAzNSArLQogaW5jbHVk
ZS9saW51eC9wY3MvcGNzLXhwY3MtcmsuaCAgICAgICAgICAgICAgIHwgIDExICsKIDEwIGZpbGVz
IGNoYW5nZWQsIDg4MSBpbnNlcnRpb25zKCspLCAyOCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3Bjcy9yb2NrY2hp
cCxyazM1NjgteHBjcy55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvcGNzL3Bj
cy14cGNzLXJrLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3Bjcy9wY3MteHBj
cy1yay5oCgotLSAKMi40Ny4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
