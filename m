Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FA10108B900
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKKyx+n3RbYuES5OS14xGSWPm5MYIG3xABUhq0aU8T4=; b=JgRpVRWiZq3J6u
	t5ndQk8Y0IP18B2j7jrbHbDf8Ct/lZs09wasjGVRvwAyPWLT2mlaRMEsXyWZ8tMA6Cb9TgdsPhcBH
	h2TASPtcIDW82UCspz+wvY5RO0FQpng3TR9LQKsEoRLOSvI9TRQ/vAU/ScaZGmiRgryx9gNOBEkC4
	bidZwi/TylaO1Tz415kP7fBuN1M9FD1Lrp/9+MaBs/qCpTeaTv9Ecqgvm0tS2qGVMJBLHeqgIltt9
	vyy1FkFcf1lxc/owx9g2s3pKgxO1nEWFjKtd6n/1iofA9C2H8yH50k3d+DXfKrt4IbAeDa0AjgI6w
	95tlm9VIEtSjxOqNSWuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Y4W-0000000ChgU-0xBp;
	Fri, 20 Mar 2026 11:31:20 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Y4T-0000000Chez-3pL1
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 11:31:19 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-59e4989dacdso1736088e87.1
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Mar 2026 04:31:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774006276; cv=none;
        d=google.com; s=arc-20240605;
        b=QzvZCP2gT/9HfCGmjdteg4EadFt1xhuTMhFVNrcpnDjVgTc9piRl5cqm1nZatLZWCi
         G8T3ZhYBKELc5ne2no4GrDg3wx/5EIJI3L4kLMIE+SQQ16FCcPAwvU3Wn0olzABkBu38
         NXlhmTzttOzvUcjkKQ5hAaSkT7xDpfkuV1YD3y7U9irRot4eWh1wQWZazWJtx15B68Cx
         CnvFIJSFz1jRqOwHiSszan+TrGqIU2keygVMtVpfdNn2g3Dz99oLPoxTbb7nNSrWxN9L
         fyTZLdMkQnW4VoTMSgasVjGZ0kMag2w3F/Ti++sXJLK5V3Ux/28hzBDXDvLXjua2kBtb
         tYPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eMY0lcPntv5uUOV5CJc9+UYjtDKfD9WbUErgzgR4vkQ=;
        fh=hB5ba1gWohq1Nzd6Z5Eb5jrdNJujNLZ2xdRRTSMKHRE=;
        b=XbhAyIXlJ9PRIZZl4qZtWFJwUOvPKXeBfieVtHUZ9T10HzpX8G3u+oRUZRlO3g9Yoy
         aGbFbQg2jtsVCSCHPULQ18rydAe5xkp4uBNEmnDehNfkJSo3Qg1BPqeMXTPRsM7c4Sx7
         XGh74xXW9MxtUD34YVNsWfnSJB4KziKKtyBznr6tZzZuAQYNwi66CuVPzAWO1dFVuE1N
         F5yXNjAmodozghFzQLFwOmqZSXxPqLTAMk6nWKhYS8sU3paSzKdfHVMA1UttDAI41eta
         Z7MRvjoUAL6Qp1X4z4MFBW70cO8Qf/Q89F6K7jbX1mJuaLAbT+sOOTn7qLuB4PN9uhva
         PcXw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774006276; x=1774611076; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eMY0lcPntv5uUOV5CJc9+UYjtDKfD9WbUErgzgR4vkQ=;
        b=RbMie5JY881JN595Un2Dh59VuXp8tetc96v/wb9IcQCqxaY+9t2zieyH4T/HVM8GkQ
         TMP3P87P1E5/l+8yV3sBwwrrS+unta9v87UP7y8FNPerNzCoNryyzjHbJEZwtNJ3+Sy2
         aAbcWtmPGY1eKRaa41FMvkY8SSNqj21OD3/GvWbNYjcbN12L8D/8R9zLJEwJoykFJxsA
         p0eS8fi1HmmOnq+RQ148XXV6i4b8jfdqQvhJZhsaEDryq4pb6iDXiXbf9sL/rGUgupOf
         TAemol47X3oKFpnj96bmO5GRAOI2syDfXoZmtB4qc/vTSXwzByhDncJ/Kw9mVd0NSQBT
         Fm4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774006276; x=1774611076;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eMY0lcPntv5uUOV5CJc9+UYjtDKfD9WbUErgzgR4vkQ=;
        b=hLGylbewiD05ldoLFznFQbJCzEO1DyRg0wHXkAhjsn2q0tl9XU0U6XnqWb/i//8Ndp
         6N7Rm/x8qR5lAVplzlr9zofQPIBAoM4XyoBxooUot/GJCvnfJNzKd+NJIb/pm00ufVPY
         qwoTn5kMq3TBTKen3PEJNwxuCWjW6/K+TtHvWDGkqD/hftovfgAVyWDOzfXQOhQZn+LB
         P//E7KhOra64EqtsXXWBtL89ac8D42v/gYefz4PjH93c3RiQ8g3Tx2wmmuSA4s7ku91I
         FT17ZYmuzVSTApDvw/tw06C/o5pRI43EY1zf2a2HIYdSfJdMA8tRVeQosLIXmmh7lNAl
         z6ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMg6j7fPn+WKwGoKe7SGF3H7yAEGOg0iAJP8GJs96HLvVK02qK5j38OmvYFTQOOSZ2f7JKnWFZ9RM6px/FAg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyJ7dIqNSx79+OKVFurmeVHM21HamQCaI/qEnadFAcG/9Pj4/Zo
	KOGuJpJEmLheinuyGJ5EfQvLXKa9wqCabFxR1dxo8RSdQg4dZX2qdUBZARG0A+iyxpL9E05F+hF
	EdscCYzWLXo4epOs570mqbOTXspGIPEQ=
X-Gm-Gg: ATEYQzxBELwKYgTE7oISezXosAtW+RflQ9DHcuo/llkXPROrjBAsR6xtfkkp7V9T7jC
	ItpBQdLtM8YNNNRHM044ZpD68eAZpaJ0TgZokMH+bMQIElTR0Ievd7fc1/UhUioeXHyVOv1O8UI
	u+BYMQua3tz52YqtRxtdFdqxw7bcia8CK7UeLSeFe3jiaHtxijxDlb3SYN8CsidQq+jxj2Ci8jA
	5wTtVWyRxrQKrbSqWFQzkZzAB1qrxMy2O7IlWx1rSSl6fl+Qas3kPg5oq6UhVF615VEHYpQPLcm
	CQ8XoB3lmSKT/AIz0yrfaodOOGNxKnvSbIbmMpIhnxUG7Zcz2NtJNCHvIHMmiBTGw2/qLF0=
X-Received: by 2002:a05:6512:3b91:b0:5a2:81b0:90a0 with SMTP id
 2adb3069b0e04-5a285b54accmr941245e87.27.1774006275214; Fri, 20 Mar 2026
 04:31:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260313131058.708361-1-festevam@gmail.com>
In-Reply-To: <20260313131058.708361-1-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 20 Mar 2026 08:31:03 -0300
X-Gm-Features: AaiRm50va_ccG5R5WwBO3W7VyJgC0oVZfJyFxH8ga_r3f46fHiK6ATpXoolqHSE
Message-ID: <CAOMZO5CksZdgaT1Rg1J9L_T0exsNSbO2G=OCnL5sOr060-neiA@mail.gmail.com>
Subject: Re: [PATCH v7 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	shawn.lin@rock-chips.com, Fabio Estevam <festevam@nabladev.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_043117_972560_B3FCE94E 
X-CRM114-Status: UNSURE (   7.93  )
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

SGkgSGVpa28sCgpPbiBGcmksIE1hciAxMywgMjAyNiBhdCAxMDoxMeKAr0FNIEZhYmlvIEVzdGV2
YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBGYWJpbyBFc3RldmFtIDxm
ZXN0ZXZhbUBuYWJsYWRldi5jb20+Cj4KPiBBZGQgdGhlIFBNVSBHUkYgYW5kIElPQyBjb21wYXRp
YmxlIHN0cmluZ3MgZm9yIHRoZSBSVjExMDNCIFNvQy4KPgo+IFNpZ25lZC1vZmYtYnk6IEZhYmlv
IEVzdGV2YW0gPGZlc3RldmFtQG5hYmxhZGV2LmNvbT4KPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgo+IC0tLQoK
RG9lcyB0aGlzIHZlcnNpb24gb2YgdGhlIHNlcmllcyBsb29rIGdvb2QgdG8geW91PwoKVGhhbmtz
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
