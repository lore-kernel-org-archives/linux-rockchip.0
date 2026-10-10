Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D74CA6017
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 12:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pT0Wmt3Wy8qepP9P1hmbKDaXCFRiGa+PqNK3DciUVME=; b=R841uy3ayX8p+i
	NCJyJ92p70IuAsI1R7TellvssGAEqgeY/j+GbMD1axRv7J5o+D4Lz8oFPaEBFh9s3+dtpnvEJsSFL
	MbOpe/dhy1HBIlWDQKN8u8veuGv3Rh6+4+OU1THd5F0cOcKT2ovyfwBx5ikVaMD0TJSJPNitTp+4K
	W7TYzd4hYSx1ORqqAwS4Nfkyv5qPrp3izpEFTwq9qxDh+W/atak6a8o25FHvpr1E95fnwRs9LYkrh
	36aW2pZ9Zp7byNZNX4H14x5OLpoJrYeOUAuV8hcfn83JD2puhDMxW7Qj0Aw2eK5ObkxioG6VY0a07
	uVEiiLaxrYq11MD/Tv8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFWCs-000000081Y7-2ujL;
	Sat, 10 Oct 2026 12:29:42 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFWCq-000000081XV-0fsE
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Oct 2026 12:29:41 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-6a5d24ae3ddso83882a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Oct 2026 05:29:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791635378; cv=none;
        d=google.com; s=arc-20260327;
        b=b3ix+dyLWj13tV9Q/Y6+LzFxBRbOwJbJxdxqqqO53EMr0UiM4s4Rwu1Gph5u000yjM
         sS5UVeliRPbSVTtY7rs1V8hL7E8UcASNkn23+x9hPxEUGNC2HTwp9O87W8BLGZv6Bd+d
         0F3WzfWTGTac8fkMcv/KLxVpGUxEqs1QX84if09abQhugb0wAJatIiQgG9Dmnv6VddX8
         Sy+2YakPDJKl8yoyYOwqdwYtsAanKxsDDIZHeqCYc7lMthQPS1kAfwkH/FS5rHGWifD6
         6A6AC3UJEFhPpTfHolgIxlQUnF42znV4MXslksWidWlSpVgJCItfD1aiJJGYkR9aJrp5
         cbIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+8VTeX55HVqAT9opVeVIhA5Fbbeg21BZnaBNdhVu5Eg=;
        fh=q9AYNxeV1Q6ow0D+v4SDiBAzMdrJK9fO9cHNRU/GPjE=;
        b=awMeEpjv6Gzsr5acwEZir+bOs0vCEUnY27FrbRoPMJcrJpXsWsD+r5lKhX01uRY0E9
         2PIHKlQN+hWskfq9SrfMOSgT0wWJnTiF6XqIaqttzIeYWxoZZPO4jeAbnhgEk1FRcUai
         9NCDnLewFIiprG1n4ggnaY8OUwpdDUquJDiWQoS7DGv2Qj7kYMhN9fPh5RuKuS7k76To
         8tdtp1Y2uVgSWOUJPwEb26jGTP+A+DTAVOSU23FwCqCp8K5kYaCJfBP/qtoyGS34Qsce
         g/tTMSFlhvUwCTwGWPCUUz8OrwgRBbWgVinTHuZzMJ6bmD/LUXzbLnzkAVuOj/nTdjs/
         REyw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791635378; x=1792240178; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=+8VTeX55HVqAT9opVeVIhA5Fbbeg21BZnaBNdhVu5Eg=;
        b=hqrQD6e9VcmVBlqHhSNnUUh/F62RrrJt2AnO8EwMDszPVAyDaUFSrihNbHfDljS5eX
         hhG+uoeOI48SlrqPGz5/T1o+1ig3w4YpU3THwedPLXprn1yRiSMxgcjnKDNFsg0lnX2y
         F1aN0Hb7q0eIb8A9tkbtS2dvR6zcW62BzLFyrNLUeLys/wgcvuiMW5BYGqHmpqLJrwbF
         OtXyG822w0foYs4UB0kydQJ51ODhS43LjTNReoklkrVPk69mJAUAnZ9CLYRjCbDyEBPk
         czr8JkMVdHqsTuTJOPNOx9iRFh+LzJrGKaZJWwi1bIHSp4wWcVfQpFUZVdAKaNtsVmK9
         pk3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791635378; x=1792240178;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+8VTeX55HVqAT9opVeVIhA5Fbbeg21BZnaBNdhVu5Eg=;
        b=fnnF42a6t8fGRiZIpLsyU1H3pwRZiv2p6Aa1rGksouvr9wQ9ml+QzRQp3uwpU5cbgr
         qNcYQDWb9YkW8X/ZmofKDHiLKBpAo6C9cCtOTOObqjnHUYEaQiPTfBcbtEaqWCIOkbnW
         x0gx7jVysF3V/weYY/Yhia7iv+mH+uc4sLNkvj0PEVdcrx1Dw0OqBKME7zJsFcwbqKJ1
         DLGLLz3T0epzm3NuXB1ToUIHcEf7TmElG3rBhwyKXqgjETW3z5aqA7GKu9IOxwZp0P7h
         dMoRWSuNZfiuP7hxuvjpyp3cQryiXCs+idk3Cfngz4Z8qGCb8Kov0kJW0AYuuXcoRx+K
         vgeg==
X-Forwarded-Encrypted: i=1; AKwUvBw/3aEXPseq8pIR3WPYpt1RL7GUcxv+lQK4KI5rroxfHNvhWV4Agktj76kDqQOrgPM2+nx2tQvaUqoZCaMCzQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYIjunaPtUVLBOxn7TetIGrVJ3poyWXJrrK6OYMYGHmqv8VvpmN7
	Fd20AxLwkyCRkbhv8EuY8a9ukGb4sGl92GZD5pMg4a5+s/bvN2TapskrU3eT/FNYK4X0+T2h0zp
	bnq/4ffD/AkLgyhYraPHf6KoS52gcAgc=
X-Gm-Gg: AYBFou1V1QRC3PfXLR7eIu3+ysMmeXpWqKsO7GB+8odPyI+EqDXwKhv+AKEkqap+/cb
	nGnbkHotLDizIIls2uYzRiRz52mNI6J9KhewjSUMIumcu2kOPZRC44w7d2bcL/RfGmnYFMf1q2c
	vTbq6/blB2kwOA8T5YQjf7bOeM5JHlQ7d8bS8QJPMZeL+BJRuqjRfF7TodplbRNBoxuJYgL6zVq
	bn4wV9owo1ITRGs6BZ8hUbvF9B263IG6AopdK2bLzLEOnca1y9xYCo9F6iJU+ZjlZiRZGdDcWj3
	E04cNj83ng/y0lyuQsEcdd6YLpb5tUNsoBaC4mXsFX4Q75X4VPCECeo=
X-Received: by 2002:a05:6402:510f:b0:6ac:c1dc:fa1d with SMTP id
 4fb4d7f45d1cf-6b17c161b69mr4459541a12.0.1791635377450; Sat, 10 Oct 2026
 05:29:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ8W1Lxmz8W2tS+HmwS6_CbDWUR9ATccUtR8+XK4hSGxjOx6gg@mail.gmail.com>
 <d0ad70a4-f797-4757-b650-55b521889a95@collabora.com>
In-Reply-To: <d0ad70a4-f797-4757-b650-55b521889a95@collabora.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Sat, 10 Oct 2026 20:31:06 +0800
X-Gm-Features: AclHuK-IPHdAvK6sqjbc38x9Pduyne1K6iFz4SxTEEOTK-1KGJAqyhJfkv-7xAA
Message-ID: <CAPwA33+xXOuTi9tZKN2mwD9NxeWX8EvZBpDSDzo4=prNfKQLwA@mail.gmail.com>
Subject: Re: RK3588 combo MIPI D-PHY (phy-rockchip-samsung-dcphy) + real
 sensor - any known-working case?
To: Michael Riesch <michael.riesch@collabora.com>
Cc: "Evan O' Keeffe" <evanokeeffe@gmail.com>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_052940_215499_C73BFA2E 
X-CRM114-Status: UNSURE (   6.25  )
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

SGkgTWljaGFlbCwKCj4gQEphc29uOiBJcyB0aGVyZSBhbiB1cGNvbWluZyB2NSBvZiB5b3VyIHBh
dGNoZXMgQlRXPwoKVGhlIGRpc2N1c3Npb24gb24gbXkgdjQgcGF0Y2ggc2VyaWVzIGlzIGN1cnJl
bnRseSBwZW5kaW5nIGFuZCB3YWl0aW5nCmZvciBteSBkZXZpY2UgdHJlZSAgcGF0Y2guIEnigJl2
ZSBhbHJlYWR5IHNlbnQgb3V0IGFuIFJGQyBwYXRjaCBbMF0gZm9yCml0LCBidXQgaGF2ZW4ndCBy
ZWNlaXZlZCBhbnkgZmVlZGJhY2sgeWV0LgoKSGkgRXZhbiwKCk15IHY0IHNlcmllcyB3aXRoIHRo
ZSBkZXZpY2UgdHJlZSBwYXRjaCBbMF0gd2FzIGFsc28gdGVzdGVkIG9uIFJLMzU4OFMKKyBJTVgy
MTkuIEhvcGUgdGhpcyBoZWxwcyEKCkJlc3QgcmVnYXJkcywKSmFzb24KClswXQpodHRwczovL2xv
cmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI2MDkwNDA3NTUzNC41NzQwMzctMS1qYXNv
bjk4MTY2QGdtYWlsLmNvbS8KCgo+IEBKYXNvbjogSXMgdGhlcmUgYW4gdXBjb21pbmcgdjUgb2Yg
eW91ciBwYXRjaGVzIEJUVz8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
