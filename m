Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658F0606A31A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 21:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3M9tT4Zo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=F0Mu5O8b
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jIgJWnialrDhTGtQMaSrZ6XZDKlYiQemwnVTZ1SUz7Y=; b=3M9tT4ZooR6VFoKSbDshdsmM8K
	obi8Q3tey+E0b+d6ow26Ko/qj4ogouejO0F7jBlNxlKh/HPHmjBVaxrm5rQOvrHsXoN39KT2bvL4L
	jIg+4cNeDDqsGZpDljIOhPFPkhDN1w2mUmj4j5WmVcNfulQvl0lqKYu4Xj5VH73SgCFuxb6NYv6kS
	yUX+r5CNMX4a0UdoDQhBbVkziPeFV8Rnm5RVIxaLQvLarbUrPoMZR0FMvnaOK2LGjxJ+ZHclFbtWJ
	n3+gCV9rFL9krn4tRHJKZvMhczlP5DNfo2EdvSEjHg7sotyDixwt7S+pYyE6A+zqhBZ7+I5wSoa8j
	C/qGWGDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMtqQ-0000000CazN-3EgK;
	Fri, 30 Oct 2026 21:09:02 +0000
Received: from mail-dy2-x0b.google.com ([2607:f8b0:4864:36::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMtqN-0000000Cayr-3pKC
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 21:09:01 +0000
Received: by mail-dy2-x0b.google.com with SMTP id 5a478bee46e88-369fd8abd71so993819eec.1
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 14:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793394538; x=1793999338; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=W3z0mwrPXjDyh25V3etJIycxf0MnLGdgmbdL34z00rw=;
        b=F0Mu5O8bq9mmA1m2G3xUriXaa91BzEo46cl5h9h7mvDm+9HXZEkCmIEVqV7L1SOza5
         OegDayqbJ3dFE81WijsPMLAQYn7hUSKWyVg9Zv/XxK0UKB5gH1IBxZuDFO+iNsDuRgue
         4mCQYjCxGXM10Us89/Ba5w0QnU4brbaXu+QN4q82qEQ5xZqOTNw9JHcLP6f+w+HTPfkl
         EQzqL7VnyHd7kDgK6y0D/cm81Ytgq3/jAmp2RdOOyFdkxyeuSA5nDr+f3/uqHBASHTQR
         m13ykwdPHmL4g49xdzVNunoWJxvHmaCcByeZ5mH1HrmH17Mfk/k9kozf9oxE92n7uS/b
         FWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793394538; x=1793999338;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W3z0mwrPXjDyh25V3etJIycxf0MnLGdgmbdL34z00rw=;
        b=h7i+/HyS6iMyvxEkcpo2FxHKIVXXuhMaHiafkJEapm+OkP+HaeUdmehadcxoMQQ0ii
         9JgaCKejDguo2E91hR2KPxKixbkeTrF0bhNujL/VKgT+ejFskha6h4vm68Tv5SHrpDPS
         +8lz/JxcETYM5/cw8lTNWT0p+RiKq+13Tx9kFlBMgTUfCNXicETmZIs076UQDS3ovOce
         ykQAY6NUAH9Un3SvX2fo8eAJx8FfwAwp+EcdpnGMNT+IHiduBUBP3DuZCsDxlCMmiYVS
         UYNWwkANHTkacldh052c8yajcY0jX6NBRjVyr/+Obj6D19msPBCFY9YW3u1MgbweDpZJ
         cwhQ==
X-Forwarded-Encrypted: i=1; AKwUvBwZl9U7VjBQHWx7fn3POPY7s29pJiyMJBnSCUhOyhIi+cXyuT7mgOP2ZF+8pIgO7cUbbNw4a0CbkqWpXszOFA==@lists.infradead.org
X-Gm-Message-State: AFq9FYI9AiK2AVNn4HxJ8M4F3WiI9UmzUW9UiZ9oWJmVioIDeJ7UCVHQ
	qbQRvJj1SltxpmUFqDXObJhj3P+jj7F24tjuoPjNXTzMOpk2U2StFK5a
X-Gm-Gg: AYBFou0hgCAN7igsPwd8P3zxzThmh5RMX1KOLFLMbx4lXIYiN0ltqG9YChjZpD/v7T7
	MqM/86UhCo7Fs2a8imT3n8mFhfXfz2bFqVqVcLFb0pFlBvVxHM8Jh/7N7vJGV7tHTo50VPwrygI
	gZUG8d3d7mkyrW0ZUG+SILPdECYqIkKIrchPDiWwhKMFnM91ednOFzvLhaROoKl2uk8mfKYS4cY
	8jAx8KZSVVNq2X848LJeZFWUvyAPIViyf7e5xXJQh/zVGfQViSZjfaRDLJYXAuCeLTrwhiHp9lQ
	1IEEfUcYrqzheKslN0zC6NbRQDvt0wSoURRPv5ln8901B+wFZUu9+WsVHjwLhOOvhwHHgtL4B5o
	YqHUiUavrLAKx24ij19cFjfUdf8R1jUgd0eSP22QqPP8/ucwAmYi5Bh2nekisCHBP7/qWktbTlf
	OAOpRIspglbR5FhLM1OTHCiOPSyUYGins9MEcKRCL3gSe0lpQmfuTlM6zTZZb43Wi1ywqkQhq0A
	kZVPA7P0W1JB1zZHNXriTuYtNpJGZTcxiclK/N0lSuHwP+XV0CvEme3L7X9G3IXAaz7jXjwAbo4
	MhkitgsAADl58nRrHCy1gSYE9C3DrPRWwvmvCboVHO5GzKIJldMKerXIXKr1
X-Received: by 2002:a05:701b:42d1:10b0:188:9ae5:162e with SMTP id a92af1059eb24-1ac5cdf9ae0mr5066603c88.40.1793394538003;
        Fri, 30 Oct 2026 14:08:58 -0700 (PDT)
Received: from ehlo.thunderbird.net ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1ac0e738445sm9657089c88.0.2026.10.30.14.08.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 14:08:57 -0700 (PDT)
Date: Sat, 31 Oct 2026 05:08:50 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Jakub Kicinski <kuba@kernel.org>
CC: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] net: pcs: xpcs-rk: limit advertised interfaces
User-Agent: K-9 Mail for Android
In-Reply-To: <c5fc86f9-3c43-4aee-8d88-92e8f88c6d5d@bootlin.com>
References: <20261029094916.3127193-2-coiaprant@gmail.com> <c5fc86f9-3c43-4aee-8d88-92e8f88c6d5d@bootlin.com>
Message-ID: <1B8D463D-1295-4BF0-972D-859C342E49F5@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_140859_958251_547865D1 
X-CRM114-Status: GOOD (  23.19  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On October 31, 2026 4:44:22 AM GMT+08:00, Maxime Chevallier <maxime.chevallier@bootlin.com> wrote:
>Hi Coia,
>
>On 10/29/26 10:49, Coia Prant wrote:
>> The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII, but the RK3568
>> GMAC only implements SGMII, so only SGMII is advertised in
>> supported_interfaces.
>> 
>> The generic xpcs core fills the mask from the compat table, which
>> includes 1000BASE-X, QSGMII and the higher-speed modes. Clearing it and
>> setting only SGMII keeps phylink from validating interfaces that are
>> not usable here.
>> 
>> 1000BASE-X and QSGMII can be enabled later when a board actually wires
>> them up.
>
>So the PCS supports them, but not the MAC ? The correct fix for that is
>likely in the MAC then.
>
>There's nothing board-specific when it comes to supporting 1000BaseX if you
>already support SGMII, 2500BaseX may work (it's 1000BaseX but 2.5x faster).
>
>Ii may just be that these modes aren't implemented in the MAC, so we should
>keep them enabled at the PCS level.
>
>Maxime
>

Hi Maxime,

You're right that for modes the PCS does implement, the limit belongs
on the MAC side. The complication is that the compat table describes
the whole Synopsys IP set, while a given XPCS instance only implements
a subset of it. That is a historical design issue in pcs-xpcs: the
table mixes C73, C37, 2500BASE-X and 10GBASE-X entries, but different
integrations implement different subsets.

On RK3568 the XPCS instance is wired up for the C37 SGMII path only.
1000BASE-X is part of the same C37 core, but I don't have a PHY to test
it against. QSGMII is not implemented in this core. 2500BASE-X and
10GBASE-X are separate modes the shared table carries, and neither is
implemented on this SoC. C73 is not wired up either.

Trimming the mask is not limiting the PCS, it is cutting the shared
table down to what this instance actually implements. A
platform-specific glue is the right place to do that.

For 2500BASE-X there is also a physical conflict: it runs at 3.125
Gbps on the SerDes while SGMII runs at 1.25 Gbps, so the same lane
cannot do both.

So the mask does two things: it trims the entries this instance does
not implement, and it leaves out 1000BASE-X because it is untested
today. If you'd prefer I keep 1000BASE-X in the mask and only trim the
unimplemented entries, I can do that.

The xpcs_find_compat() part is the more general fix: it makes the mask
authoritative so the core does not configure an interface the glue has
marked unsupported.

I agree the stmmac OR-merge is the architectural issue, but I'd rather
not mix that into this fix. The compat table mixing is a separate
discussion too, but I'm happy to follow up on it if you think it is
worth pursuing.

This reply is to the v1 thread; v2 with the folded xpcs_find_compat()
change is already on the list, please have a look there.

Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
