Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A61606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 08:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Lee4zO3n;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=v8N5SCaM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZC30DhQ3Ff0Qoloj8KxGIPChq5cNYMOBu2bx2iEgw9I=; b=Lee4zO3nH6MjfoJY/Ex8aQvS8f
	WPgmM1r07bipkk+6suX8EvyDCYBfDvineSK7gWifn6duXjA14JBu5LCOSeC/O2oVcxRseGfzKz22x
	D5AMu7Xbjy28qO+dTOuSiSHQDtrIe66a9zUHEp/2zMTYAajS7yXowNWP6jCEonaWa9Oj/zBjAzSim
	AskthoHFgq31CilI3cHon9DKUcgtegefJsVwAjkp7AcJ7X06/StY2MSDAs332sFDFwMBniQHDrILV
	jF0/3oEPZmIjD96KRDK/+tsMXm6xyZuYXpYpXY06bMjS+hmQfyb5O98oQv71Nu5kNMFumZsOS1Nw6
	BNzMfS/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVlYK-00000005qYa-2q5d;
	Tue, 24 Nov 2026 08:07:00 +0000
Received: from mail-vk1-xa2f.google.com ([2607:f8b0:4864:20::a2f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVlYH-00000005qXN-2oVa
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 08:06:59 +0000
Received: by mail-vk1-xa2f.google.com with SMTP id 71dfb90a1353d-5ee3a3d281fso2709567e0c.3
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 00:06:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795507616; cv=none;
        d=google.com; s=arc-20260327;
        b=mYCcPxtty7bhioHMBVwwxDBcpIf7Ps7XfGQxaQYDVAcvp5tYJkDjBxRAVDSGfLFN+O
         BUEL/Qy+zx3ma7MiHfSvcYAEIx3EStxNE5QI25OEHa2eV0Z4T7OZ/t+dhOHXBc/JGkxW
         bcqYHKFw21KMmQxmOZBCw/YwsR4LiuOBKu25s7iQUGi062RGODE3X3myx7ecUEo0Qc9Q
         F3tMIRz5ikPOMCyTMFW5FDdbqN/W+rHQAaq338Hu5aD3/iarTwmJd0Bd2k7KyYPKLE+/
         qJYPZ9WGqpQDCUZ0W8mHK1wkPC9JyAmOCGa7g46ZG43xUZkylEhVWAOdalhLVP3N1gl4
         xpgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bw6nyEiSIkuUi2FfPQWVcCbleSg58qLNpgEdKu/3YUI=;
        fh=T/zBSmiGpuYu97CJB9NUaa8BMCORSSyZO+S1aGbgu08=;
        b=Cc96xUkF/mp0AKWnmW4+pAd6VQQ6CyghiX2cCcPKOw8T3O6fTxiKT/LOcpNNjtw0qQ
         tULsfwG4BJPLYfrjLQGBSSWTPWUYIO6Vl8xXBAHpZks4bdO8F+qgVLFLG26TZySRUvuP
         hmzG4YnmYCa+WXqScD3ApuCDOMe+i8Ob1GdgomNP+I0fnD2Nv0HHA+3OEe5SgOowBsZz
         hdrcLzOk/XIpoRzYZvXVBBjtM/oVGjXKs34lPHnsKXLgKZKur28dMHz+40HoQfKafHRY
         CkHwwY0FmVHqdKkYJAsGa0xPdwuMNuwrl9QPOG5OkTYfj/++QYIW4eeMtMyYS6oOhSIU
         r+lQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795507616; x=1796112416; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bw6nyEiSIkuUi2FfPQWVcCbleSg58qLNpgEdKu/3YUI=;
        b=v8N5SCaMOEdV5ChBiHzp+XfMOLIBp9sKcyjp28ZBWPq3RzmOumI3dqWOCTkywI7ke7
         qKGtHfYSy4I7IFA+tdA5gdPgF9/RE5tDMPfYYOz5TFyGUTtDnNlbOh/zi4s/3tkWVQPI
         eR6+Wx/dKypSswEdn2mDZtKnQDY7NDosNqWiVUw/ZPJPsjSMlVW2HEaf60aKweya3uqy
         yYPRMp1kEvR4K+RbMDxquww59o7SCi1Tj0WcAa1z5Ac1ePiLToAdms/EnSAzS1TIfEXP
         dcxqn1kIqhsmMO+1/JlngkPXSm8wg/HG9HsggOkHNzm0Js7k3SdJ4/sh6uX+RxYbdD3y
         vQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795507616; x=1796112416;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bw6nyEiSIkuUi2FfPQWVcCbleSg58qLNpgEdKu/3YUI=;
        b=om6OuExaR1I6xTrQ34+K9owQzTRhgtRw8qvJyv5f9n3+yUwoUckGN/1BOd552AlxfU
         LBgdEWp5mj5ulMPf0JivPHefcnjEQzBde9pyeQj77i2HWnrgQmG6iqBBP9LIv2JoV6ye
         Pvzn7ELoCWLkBidC9D2f53RMjUkXFpstwV6LXLXbGIzS71zzD4BaCz+KiQLjmIVAnMa/
         HaPgn31HOZWnFBckmOtBeMm4HXHZgYYNKJ8creTbpN8KWnZmCzN9f4WmfHaGygSFVwD6
         YY88iSVs6YxA4s8mKlwmCwlMn1pjv4AdMP7Bo0DK5qn+zXZYpiBi+IZLmaiTveAS/cTj
         HngA==
X-Forwarded-Encrypted: i=1; AL+hErERG269nIarsP9wLstCJTbza6o5yc2WxIO1TpjiH6vQgG9LE50RlubJC6jfGqKsj7DpDesZtxUDvPUWq6aXjQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8RxKWDF1D7Gsyq6NgW8EwVwFuqYPa4ELb9urdRUusIo4xQ0N8C
	LQP1ayotsqcURVI/rpwxHQ8Hla/mog9dOTN8umKzc6xGNXQ/lHlMI/kFu++kbJtdpk4pDbKGQNg
	nGunscvMGBm78sYyeS/FrCSSqpW4VPwo=
X-Gm-Gg: AZFdTZfdv5FBtrVyMr+67GHR/cwjkjADYfCPZV/cvwhqPkF+UHnPRZVfwHjZVSMC/f3
	zBrIu1F7ajOcDLh5GOwNPlBb94cyrIkp0XSmmTXVeNLKqgwVyBp2SSin2kA3FckEtzXqO/Et8On
	RJ/CZgtSUTWK+HFvszdVh8d3BtodeureXLvlLdHkIX+fYnAcNWNrWy919W4AVnk3w6eY7y/17Pm
	ESr2jPjMyYcxyb/Dox3m1Y67Z8gQ2w1MrQYFje7/oMTQI5acRoKAXq4f+vFBu84wAVOpZ3Yb6kd
	/oV/IGMB5evsqxdS66LCpAyIm05cqttMbt/UIXJP9TToXkQulB7IXV2y0b4gw2b/JlkmgKongh8
	uwCEmSxrXMoGMgOj7qVBLyulpoQyRdaxXiFoAbVYRYt40jKR7sHqk+Tc12A/z8bEeipO0O4YXB3
	an8lOUorlRzCqM+Oo=
X-Received: by 2002:a05:6122:130a:b0:5e9:721c:72a8 with SMTP id
 71dfb90a1353d-5ee8ad0f9ebmr7298180e0c.0.1795507616075; Tue, 24 Nov 2026
 00:06:56 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261123235154.315460-1-gahing@gahingwoo.com>
In-Reply-To: <20261123235154.315460-1-gahing@gahingwoo.com>
From: Anton Sovetov <anton.sovetov@gmail.com>
Date: Tue, 24 Nov 2026 11:06:45 +0300
X-Gm-Features: Aa3M54rUMtJHW-VAq-3nFFJeEzc6wZ6Xr6IR4ySmynSenaDrr1lXVW8oN5BrzrI
Message-ID: <CANLiQWot44KOq8A8dQGt0JNoX=BvH2T+HryMEV05qC6iLydidA@mail.gmail.com>
Subject: Re: [PATCH] iommu/rockchip: Disable paging on banks that still page
 before a force reset
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, heiko@sntech.de, 
	tomeu@tomeuvizoso.net, ddrake@baylibre.com, sidong.yang@furiosa.ai, 
	chaoyi.chen@rock-chips.com, iommu@lists.linux.dev, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_000657_762593_DC5A817A 
X-CRM114-Status: GOOD (  32.46  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmtzLCB0aGF0IGRlc2NyaXB0aW9uIG1hdGNoZXMgdGhlIGVuZCBzdGF0ZSBJIHNlZSwgc28g
aXQgaXMgd29ydGggdGVsbGluZyB5b3UKd2hlcmUgaXQgZG9lcyBhbmQgZG9lcyBub3QgZml0IG15
IGJvYXJkLgoKTWluZSBpcyBhbiBSSzM1NjYgd2l0aCBhIHNpbmdsZSBiYW5rLiBUaGUgTU1VIG5v
ZGUgaXMgMHg0MCBieXRlcyBvZgpyZWdpc3RlcnMgYW5kCnRoZSBkcml2ZXIgZW5kcyB1cCB3aXRo
IG51bV9tbXUgPSAxLCBzbyB0d28gYmFua3MgY2Fubm90IGRpc2FncmVlLiBJIHRvb2sgdGhlCm5l
YXJlc3QgYW5hbG9ndWUgb2YgeW91ciBmaXggdGhhdCBleGlzdHMgZm9yIGEgc2luZ2xlIGJhbmss
IHRoZSBvbmUgaW4gdGhlCkFuZHJvaWQgdHJlZTogYWNrbm93bGVkZ2UgYSBsYXRjaGVkIHBhZ2Ug
ZmF1bHQgd2l0aCBDTURfUEFHRV9GQVVMVF9ET05FIGJlZm9yZQpzZW5kaW5nIENNRF9FTkFCTEVf
U1RBTEwsIGJlY2F1c2UgYSBiYW5rIHNpdHRpbmcgaW4gUEFHRV9GQVVMVF9BQ1RJVkUgd2l0aCBu
bwpzdGFsbCBpZ25vcmVzIHRoZSBzdGFsbCBjb21tYW5kIGFuZCB0aGUgcG9sbCB0aW1lcyBvdXQu
CgpNZWFzdXJlZCBvbiA2LjE4LjI0LCB0d2VudHkgc2VwYXJhdGUgcHJvY2Vzc2VzLCBmaXZlIHJ1
bnMgZWFjaCwgSU9NTVUgbW9kZToKCi0gYmVmb3JlOiAzIG9rLCA0IHdyb25nIG91dHB1dCwgMTgg
dGltZW91dHMgKHRoZSBmYWlsdXJlcyBhcmUgc3RpY2t5LCBvbmx5IGEKICByZWJvb3QgY2xlYXJz
IHRoZW0pOwotIHdpdGggdGhlIHN0YWxlLWZhdWx0IGFjazogMiBvaywgMCB3cm9uZywgMTggdGlt
ZW91dHMuCgpObyBjaGFuZ2UsIGFuZCBtb3JlIHVzZWZ1bDogZG1lc2cgaGFzIG5vICJFbmFibGUg
c3RhbGwgcmVxdWVzdCB0aW1lZCBvdXQiIGFuZCBubwoiRGlzYWJsZSBwYWdpbmcgcmVxdWVzdCB0
aW1lZCBvdXQiIGxpbmUgYXQgYWxsLiBTbyBvbiBteSBib2FyZCB0aGUKcmUtZW5hYmxlIHBhdGgK
aXMgbmV2ZXIgdGhlIG9uZSB0aGF0IGZhaWxzLgoKV2hhdCBJIHNlZSBpbnN0ZWFkLCBhdCB0aGUg
Zmlyc3QgZmFpbHVyZTogdGhlIGpvYiBpcyBzdWJtaXR0ZWQsIHRoZQpraWNrIHJlZ2lzdGVycwpo
b2xkIHdoYXQgdGhlIGRyaXZlciB3cm90ZSwgYW5kIHRoZSBjb3JlIG5ldmVyIHJ1bnMgaXQuIElO
VF9SQVdfU1RBVFVTIHJlYWRzCjB4MTAwMDAgd2hpbGUgdGhlIHJlcXVpcmVkIG1hc2sgaXMgMHgz
MDAsIHRhc2sgY291bnRlciAwLiBUaGUgTU1VIGlzIGhlYWx0aHkgYXQKdGhhdCBtb21lbnQsIHBh
Z2luZyBlbmFibGVkLCBubyBmYXVsdCBwZW5kaW5nLiBMYXRlciBmYWlsdXJlcyBzb21ldGltZXMg
bGVhdmUgYQpmYXVsdCBpbiB0aGUgcmVnaXN0ZXIsIGJ1dCB0aGUgZmlyc3Qgb25lIGhhcyBub25l
LgoKVHdvIHF1ZXN0aW9ucyBpZiB5b3UgaGF2ZSB0aGUgbG9ncyBhdCBoYW5kOgoKLSBvbiB5b3Vy
IFJLMzU3NiwgZG9lcyB0aGUgaGFuZyBzdGFydCB0aGUgc2FtZSB3YXksIHdpdGggYSBqb2IgdGhh
dCBuZXZlcgogIGV4ZWN1dGVzLCBvciBkb2VzIHRoZSBNTVUgcmUtZW5hYmxlIGZhaWx1cmUgY29t
ZSBmaXJzdD8KLSBkbyB5b3UgZXZlciBzZWUgYml0IDB4MTAwMDAgaW4gdGhlIE5QVSdzIElOVF9S
QVdfU1RBVFVTIG9uIGEgaHVuZwpqb2I/IEkgY2Fubm90CiAgZmluZCB3aGF0IHRoYXQgYml0IGlz
IGluIHRoZSBSSzM1NjYgcmVnaXN0ZXIgbWFwLCBhbmQgdGhlIGRyaXZlciBkb2VzIG5vdCBtYXNr
CiAgaXQgaW4sIHNvIGl0IG5ldmVyIHJhaXNlcyBhbiBpbnRlcnJ1cHQuCgpGb3IgdGhlIHJlY29y
ZCwgdGhlIG90aGVyIHRocmVlIHRoaW5ncyBJIHJ1bGVkIG91dCBieSBtZWFzdXJlbWVudCBvbiB0
aGUgc2FtZQpib2FyZCwgaW4gY2FzZSBvbmUgb2YgdGhlbSBpcyB3aGF0IHlvdXIgcGF0Y2ggcmVh
bGx5IGZpeGVzOiBUTEIgc3RhbGVuZXNzIChmdWxsClpBUF9DQUNIRSBhbmQgYSBkb21haW4gZGV0
YWNoL2F0dGFjaCBiZWZvcmUgZXZlcnkga2ljayksIGNhY2hlIGNvaGVyZW5jeSBmb3IgdGhlCnRh
c2sgYW5kIHJlZ2NtZCBidWZmZXJzLCBhbmQgdGhlIGlvdmEgd2lkdGggKGxpbWl0aW5nIHRoZSBk
bWEgbWFzayB0byAzMCBiaXRzKS4KTm9uZSBvZiB0aGVtIG1vdmVkIHRoZSBmYWlsdXJlIHJhdGUu
CgrQstGCLCAyNCDQvdC+0Y/QsS4gMjAyNuKAr9CzLiDQsiAwMjo1MiwgSmlheGluZyBIdSA8Z2Fo
aW5nQGdhaGluZ3dvby5jb20+Ogo+Cj4gQWZ0ZXIgYW4gUkszNTc2IE5QVSBqb2IgdGltZW91dCBy
ZXNldHMgdGhlIGNvcmUsIHRoZSBiYW5rcyBvZiBpdHMgSU9NTVUKPiBjYW4gYmUgbGVmdCBpbiBk
aWZmZXJlbnQgc3RhdGVzOiBiYW5rIDAgaXMgc3RpbGwgcGFnaW5nIHdoaWxlIGJhbmsgMQo+IGhh
cyBiZWVuIHJlc2V0Lgo+Cj4gSW4gdGhpcyBzdGF0ZSB0aGUgZXhpc3Rpbmcgc3RhbGwgYW5kIHBh
Z2luZyBoZWxwZXJzIGRvIG5vdGhpbmcsIHNvIHRoZQo+IGZvcmNlIHJlc2V0IHRoYXQgZm9sbG93
cyBmYWlscyBhcyB3ZWxsLiBUaGUgSU9NTVUgY2FuIHRoZW4gbm8gbG9uZ2VyIGJlCj4gZW5hYmxl
ZCwgYW5kIHRoZSBOUFUgc3RvcHMgd29ya2luZy4KPgo+IFdoZW4gdGhlIGJhbmtzIGRpc2FncmVl
LCBzdG9wIHBhZ2luZyBvbiB0aGUgYmFua3MgdGhhdCBzdGlsbCBwYWdlCj4gZmlyc3QsIHRoZW4g
cnVuIHRoZSBleGlzdGluZyBzZXF1ZW5jZS4KPgo+IFRlc3RlZCBvbiBhIFJPQ0sgNEQgd2l0aCBy
ZXBlYXRlZCBmb3JjZWQgam9iIHRpbWVvdXRzLiBXaXRob3V0IHRoaXMKPiBwYXRjaCwgb25lIGlu
IGV2ZXJ5IDIgdG8gMTAgdGltZW91dHMgd2FzIG5vdCByZWNvdmVyZWQgZnJvbTsgd2l0aCBpdCwK
PiAyMCBvdXQgb2YgMjAgcmVjb3ZlcmVkLgo+Cj4gRml4ZXM6IGNkNjQzOGM1Zjg0NCAoImlvbW11
L3JvY2tjaGlwOiBSZWNvbnN0cnVjdCB0byBzdXBwb3J0IG11bHRpIHNsYXZlcyIpCj4gU2lnbmVk
LW9mZi1ieTogSmlheGluZyBIdSA8Z2FoaW5nQGdhaGluZ3dvby5jb20+Cj4gLS0tCj4gTm90IHRl
c3RlZCBvbiB0aGUgUkszNTg4Lgo+Cj4gTExNLWFzc2lzdGVkLgo+Cj4gIGRyaXZlcnMvaW9tbXUv
cm9ja2NoaXAtaW9tbXUuYyB8IDYxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMgYi9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11
LmMKPiBpbmRleCAxZmEzMTEwYjE0MmEuLjVlYWJlZmIwYWQxNCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPiArKysgYi9kcml2ZXJzL2lvbW11L3JvY2tjaGlw
LWlvbW11LmMKPiBAQCAtNTA3LDYgKzUwNyw2NCBAQCBzdGF0aWMgaW50IHJrX2lvbW11X2Rpc2Fi
bGVfcGFnaW5nKHN0cnVjdCBya19pb21tdSAqaW9tbXUpCj4gICAgICAgICByZXR1cm4gcmV0Owo+
ICB9Cj4KPiArLyoKPiArICogVGhlIGhlbHBlcnMgYWJvdmUgb25seSBhY3Qgd2hlbiBldmVyeSBi
YW5rIGFncmVlcy4gQWZ0ZXIgYSByZXNldCBvZiB0aGUKPiArICogbWFzdGVyLCBvbmUgYmFuayBj
YW4gc3RpbGwgYmUgcGFnaW5nOyBzdG9wIGl0IGJhbmsgYnkgYmFuay4KPiArICovCj4gK3N0YXRp
YyB2b2lkIHJrX2lvbW11X3F1aWVzY2VfcGFnaW5nX2JhbmtzKHN0cnVjdCBya19pb21tdSAqaW9t
bXUpCj4gK3sKPiArICAgICAgIGludCBpLCByZXQ7Cj4gKyAgICAgICB1MzIgc3RhdHVzOwo+ICsK
PiArICAgICAgIGZvciAoaSA9IDA7IGkgPCBpb21tdS0+bnVtX21tdTsgaSsrKSB7Cj4gKyAgICAg
ICAgICAgICAgIHZvaWQgX19pb21lbSAqYmFzZSA9IGlvbW11LT5iYXNlc1tpXTsKPiArCj4gKyAg
ICAgICAgICAgICAgIGlmICghKHJrX2lvbW11X3JlYWQoYmFzZSwgUktfTU1VX1NUQVRVUykgJiBS
S19NTVVfU1RBVFVTX1BBR0lOR19FTkFCTEVEKSkKPiArICAgICAgICAgICAgICAgICAgICAgICBj
b250aW51ZTsKPiArCj4gKyAgICAgICAgICAgICAgIGRldl93YXJuX3JhdGVsaW1pdGVkKGlvbW11
LT5kZXYsICJiYW5rICVkIHN0aWxsIHBhZ2luZywgc3RhdHVzICUjMDh4OyBkaXNhYmxpbmcgaXRc
biIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGksIHJrX2lvbW11X3Jl
YWQoYmFzZSwgUktfTU1VX1NUQVRVUykpOwo+ICsKPiArICAgICAgICAgICAgICAgaWYgKHJrX2lv
bW11X3JlYWQoYmFzZSwgUktfTU1VX1NUQVRVUykgJiBSS19NTVVfU1RBVFVTX1BBR0VfRkFVTFRf
QUNUSVZFKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHdyaXRlbChSS19NTVVfQ01EX1BBR0Vf
RkFVTFRfRE9ORSwgYmFzZSArIFJLX01NVV9DT01NQU5EKTsKPiArCj4gKyAgICAgICAgICAgICAg
IHJrX2lvbW11X2Jhc2VfY29tbWFuZChiYXNlLCBSS19NTVVfQ01EX0VOQUJMRV9TVEFMTCk7Cj4g
KyAgICAgICAgICAgICAgIHJldCA9IHJlYWRsX3BvbGxfdGltZW91dChiYXNlICsgUktfTU1VX1NU
QVRVUywgc3RhdHVzLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RhdHVzICYgUktfTU1VX1NUQVRVU19TVEFMTF9BQ1RJVkUsCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBSS19NTVVfUE9MTF9QRVJJT0RfVVMsIFJLX01NVV9QT0xM
X1RJTUVPVVRfVVMpOwo+ICsgICAgICAgICAgICAgICBpZiAocmV0KQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIGRldl9lcnIoaW9tbXUtPmRldiwgImJhbmsgJWQ6IHN0YWxsIHRpbWVkIG91dCwg
c3RhdHVzICUjMDh4XG4iLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaSwgc3Rh
dHVzKTsKPiArCj4gKyAgICAgICAgICAgICAgIHJrX2lvbW11X2Jhc2VfY29tbWFuZChiYXNlLCBS
S19NTVVfQ01EX0RJU0FCTEVfUEFHSU5HKTsKPiArICAgICAgICAgICAgICAgcmV0ID0gcmVhZGxf
cG9sbF90aW1lb3V0KGJhc2UgKyBSS19NTVVfU1RBVFVTLCBzdGF0dXMsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAhKHN0YXR1cyAmIFJLX01NVV9TVEFUVVNfUEFH
SU5HX0VOQUJMRUQpLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
UktfTU1VX1BPTExfUEVSSU9EX1VTLCBSS19NTVVfUE9MTF9USU1FT1VUX1VTKTsKPiArICAgICAg
ICAgICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKGlvbW11
LT5kZXYsICJiYW5rICVkOiBkaXNhYmxlIHBhZ2luZyB0aW1lZCBvdXQsIHN0YXR1cyAlIzA4eFxu
IiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGksIHN0YXR1cyk7Cj4gKwo+ICsg
ICAgICAgICAgICAgICBya19pb21tdV9iYXNlX2NvbW1hbmQoYmFzZSwgUktfTU1VX0NNRF9ESVNB
QkxFX1NUQUxMKTsKPiArICAgICAgICAgICAgICAgcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KGJh
c2UgKyBSS19NTVVfU1RBVFVTLCBzdGF0dXMsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAhKHN0YXR1cyAmIFJLX01NVV9TVEFUVVNfU1RBTExfQUNUSVZFKSwKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJLX01NVV9QT0xMX1BFUklP
RF9VUywgUktfTU1VX1BPTExfVElNRU9VVF9VUyk7Cj4gKyAgICAgICAgICAgICAgIGlmIChyZXQp
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZGV2X2Vycihpb21tdS0+ZGV2LCAiYmFuayAlZDog
ZGlzYWJsZSBzdGFsbCB0aW1lZCBvdXQsIHN0YXR1cyAlIzA4eFxuIiwKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGksIHN0YXR1cyk7Cj4gKyAgICAgICB9Cj4gK30KPiArCj4gK3N0
YXRpYyBib29sIHJrX2lvbW11X2JhbmtzX2Rpc2FncmVlX29uX3BhZ2luZyhzdHJ1Y3QgcmtfaW9t
bXUgKmlvbW11KQo+ICt7Cj4gKyAgICAgICBpbnQgaSwgbiA9IDA7Cj4gKwo+ICsgICAgICAgZm9y
IChpID0gMDsgaSA8IGlvbW11LT5udW1fbW11OyBpKyspCj4gKyAgICAgICAgICAgICAgIG4gKz0g
ISEocmtfaW9tbXVfcmVhZChpb21tdS0+YmFzZXNbaV0sIFJLX01NVV9TVEFUVVMpICYKPiArICAg
ICAgICAgICAgICAgICAgICAgICBSS19NTVVfU1RBVFVTX1BBR0lOR19FTkFCTEVEKTsKPiArCj4g
KyAgICAgICByZXR1cm4gbiAmJiBuICE9IGlvbW11LT5udW1fbW11Owo+ICt9Cj4gKwo+ICBzdGF0
aWMgaW50IHJrX2lvbW11X2ZvcmNlX3Jlc2V0KHN0cnVjdCBya19pb21tdSAqaW9tbXUpCj4gIHsK
PiAgICAgICAgIGludCByZXQsIGk7Cj4gQEAgLTk0Nyw2ICsxMDA1LDkgQEAgc3RhdGljIGludCBy
a19pb21tdV9lbmFibGUoc3RydWN0IHJrX2lvbW11ICppb21tdSkKPiAgICAgICAgIGlmIChyZXQp
Cj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4KPiArICAgICAgIGlmIChya19pb21tdV9i
YW5rc19kaXNhZ3JlZV9vbl9wYWdpbmcoaW9tbXUpKQo+ICsgICAgICAgICAgICAgICBya19pb21t
dV9xdWllc2NlX3BhZ2luZ19iYW5rcyhpb21tdSk7Cj4gKwo+ICAgICAgICAgcmV0ID0gcmtfaW9t
bXVfZW5hYmxlX3N0YWxsKGlvbW11KTsKPiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAg
ICAgIGdvdG8gb3V0X2Rpc2FibGVfY2xvY2tzOwo+Cj4gYmFzZS1jb21taXQ6IDkwOWVmN2E5YTMw
ZmExMzllNjllNTU1ZTM2MDY2ODBmNWNjYTc3MjYKPiAtLQo+IDIuNDMuMAo+CgoKLS0gCldpdGgg
cmVzcGVjdCwKQW50b24gU292ZXRvdiAoY28tRm91bmRlciBhbmQgQ0VPIG9mIDNkLWNsdWIgTExD
IikKaHR0cHM6Ly8zZC1jbHViLnJ1ICAgICAgICAgICAgICAgICAgICAgICAgdGVsOis3ICg5OTkp
IDI0Ni03OC0zNgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
