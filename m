Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A936EC6FD18
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Apr 2023 15:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mj9mU+W+PQMsVTSIZbxLiLpClY2aSKRyqrsPlhyKzCc=; b=3OrIqlGHFB4GJU
	NNs02zcdN3IIeXRcrJgNSWwrGS9UrYM5ZlZxO6UG5v7gLvZ8+FlVnBi8QLewbIa5OpTtVbl8mg2PO
	9wQZefAPwe8xzat6NnLI2sUwmExVQd/KG6TIUew5yO22OvgoAg193nd+gLPs3Ba0ySa5thG1dz5gd
	ZDxYZmwbTL0JSGamvr8gmV+eGRD0TRf2WSxeWpATeYKKGckpgkd9gygYkSs4m/nDjZaLaNDhzN5/f
	6T12gkmeYwLLvSiu5VVv4rK5aA1rzRsG5LnEJl/Y+4Bo9g8+HeTDxz5UhRr8VhAIbqom0Idf2NrdJ
	nSWwAAtcyvesxe9sQ3jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqFNV-00D4Zj-2J;
	Sat, 22 Apr 2023 15:42:21 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqFNQ-00D4Yn-36;
	Sat, 22 Apr 2023 15:42:18 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-51efefe7814so3178286a12.3;
        Sat, 22 Apr 2023 08:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682178135; x=1684770135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVQxYKKislOfR8ZYxXmr+9aUravTx+cCIGJ45Hvdwug=;
        b=kzRug9+Tn2TJDGedKHq0d0CoA69nMh58ZwBNCSJckG3XcAvmRQWS49yobLUnHZd2Yu
         IjkvWXWo7K2rQ8/HXc+WHPFAXbuwOR+Up3g7iVrBkvBXl7K0G+orhNidjG3715FEOjuw
         70cojn3cR8Vz29I59NZakznDwpBOeBvRbsTf8N8/y2iNQVSYeE6NjFDra8GOtR+cfHaL
         rfCwoO4HrmeaSBUlIm9xbqz4N3LGFdGOjE5nvmtqnKwXikF8Ui6KDWRcNg2na9+FGKA/
         x0Kwo9TLMY0sGY9yxqYLoK7ImpT6cgmeWoqkue6VHPp0IkzmGeL7d3/sHqLlui0xFWIC
         cdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682178135; x=1684770135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVQxYKKislOfR8ZYxXmr+9aUravTx+cCIGJ45Hvdwug=;
        b=l2tpEWBI2XTY4ernWzDiKQD5MQx1xp3mVpuUzmLXkV6CLvEteHRIEnQQOOE+zi4CLP
         G2LsZfYF3wleUv8Hs+08+blsPapBzvdi/y1hsDW0dx225tFzzozeqyZQ4z2/fX04XB4c
         VCJyctmz+rCERcaQFl17LgnIu4qwWPQcT06amSc798+DyLYjDVAfDfjLzzH9r5kE9r+e
         S/71Yay4MNmEGpE+ooEk8G9Ll3UhG8hXPIVuqVbVx47gIUj9vo85Uas+FZ9J9wh/ap4s
         cjZU7heqNju6XioADEvDsRKZIinCvzaongWnUmqMh64dF2d/vRcpizKk/UR+ErVj55JK
         VxyA==
X-Gm-Message-State: AAQBX9c2VtxQUmvOWYNL3MUh4A/kMK0V/KXfBqOeLZ0z948FpTZU+6wh
	WkYNL9moDEY4HRZgyX+pFW5u/N+jkoGayvKlXTA=
X-Google-Smtp-Source: AKy350YcNTd1IJRZb+33FolxDKuyDPWLDnjQIJs2yR0FXe6LQ2bkFXxQm41e5R1Hh2Oi1yTd7XP/Lt963dVdW48ZFfE=
X-Received: by 2002:a17:90a:9113:b0:247:4200:7432 with SMTP id
 k19-20020a17090a911300b0024742007432mr8202873pjo.40.1682178135605; Sat, 22
 Apr 2023 08:42:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
 <CAEwRq=o71XMoj6_QU-mKrrrBqz80=C0g4fMwejv7fN-vAop89w@mail.gmail.com> <80d23bb9-b55a-57c5-4aa1-d29a919b04ae@collabora.com>
In-Reply-To: <80d23bb9-b55a-57c5-4aa1-d29a919b04ae@collabora.com>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Sat, 22 Apr 2023 15:42:04 +0000
Message-ID: <CAEwRq=rzz2gdj5rc4_hYb1dZX3ztMa6ZGOeoqM1CU4uLvWZ7Qg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Enable rk3588 timer support
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Johan Jonker <jbx6244@gmail.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230422_084217_024731_22C25EF4 
X-CRM114-Status: UNSURE (   8.47  )
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

SGksCgpPbiBTYXQsIEFwciAyMiwgMjAyMyBhdCAzOjE14oCvUE0gQ3Jpc3RpYW4gQ2lvY2FsdGVh
CjxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gVGhhbmtzIGZvciB0
YWtpbmcgdGhlIHRpbWUgdG8gdGVzdCB0aGlzIQoKWW91IGRpZCB0aGUgd29yaywgSSB0cnkgdG8g
aGVscC4uLgoKQlRXLCBJJ2xsIHRlc3QgdGhlIFBXTSBmYW4gcGF0Y2ggKHBvcnRlZCB0byBRUDY0
IGJvYXJkKSBpZmYgSSBjYW4gZmluZAphIGZhbiB3aXRoIHRoZSBzYW1lIGNvbm5lY3Rvci4uLgoK
UmVnYXJkcwoKLS0gClZpbmNlbnQgTGVnb2xsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
