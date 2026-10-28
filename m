Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDCA606A322
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 08:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UlHLOehD;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Mkj5aPXg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FnZk28uTpXXZJ2X3dcZZQUZRij4+E+BT1YcrvTF98WA=; b=UlHLOehDWy4PHyCJTsSVwbwyrp
	E1P7ojmaSgK73qpvt7uOudI1V3Z+P6FaFOQhTikYkw5c6g+wfaFjC4AfRFYkP3kSZhCsfH4oBnNWI
	1mMZHu2AX9RZSenDQgl1etYN3U1bzWufeam9ENVKg1ha5d5Li46esRrGuzKjnoAp6Xj6DIpGHOgzo
	YBdoVv0qlmTxenns+OdEyAYfNkhBe1UTCcW1kEmmouGHMoWPwzWrenCI+QRhxNvo0y0eqUnoIKtdO
	AIwjw4qHeNstuZ7a2C5LKYUdjOYyK1Mx6NN6zyPPX1hbApqB66Z5EkvojGmc1BgClD2Rt3eJGJZHg
	SIIFwz8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzSK-00000006bFR-3HQx;
	Wed, 28 Oct 2026 08:56:24 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzSH-00000006bDe-3mRM
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 08:56:23 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-6b3e4764ebeso153808a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2026 01:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793177779; cv=none;
        d=google.com; s=arc-20260327;
        b=Kyj6zssEXYIjplO1bzVIfew0x3aJZasJHZ0GXJDDxNr9O9/nIKhVShVnKP2TQrePfx
         rOYKXcvUJ2jo3aLw/mtyT9vayqiAaOaiI7auVekjZAmW0mG8wruxGfAc83cGZ/6djnGH
         ki3oKiIA6u1GdWBJ5iZ1qpRo66nm2q0vKHXA1AxZD3AM/xP+ZKh8jYpNiNtnrIm5YPAm
         bjXsEJx1F/eVPXz8UktWl/PJZqwd7fsXFJKTDzlJgmDdxUerMix4C2/NZXgk0FYpVe77
         hFDzafAIcs6lysI7MiiYHNg6ODB4djGmU3VDeSAjwbOKakiehnBi18gFyJK1XYji3kC3
         cEhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZZQo695rVLd/9P8OSYiw403iPH4b0i2xMXdXOpikEz8=;
        fh=etjGItwBi1E7gb6Jk+tiQkgQRaKA3/aRN0H+Vy5Bmxg=;
        b=b4sjyTJKSZyeT/V7VAnlt9tKIshImRsMpSNnlQPzItBuAUdLINB3h0hthXbbhvYFxW
         KwlzCJDxUq8HWz25QRcp9CkYx4lIwiX5YNu8hrfUDUly4jdCaq/IlCmnTmTh6l897qT2
         oGwZpGA3mMJtIMqqUKWLvE++421ksDnEHOo2NjTmXBRrWADP43EKhD01K2mWR1GO6P4r
         2RMNkOMaKmvMUXg7M3dVuL9kAnpmlbthYQGzQCvF7LIinrQ5jH0uZNDhajXfRMhApH6s
         7IR6iReD5EhSVRedXsIbp2EJXmkImMkTlqZo7gSr4qz5EsMglg2BZ+xqwMXLFuhDOs1W
         bxMA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793177779; x=1793782579; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZZQo695rVLd/9P8OSYiw403iPH4b0i2xMXdXOpikEz8=;
        b=Mkj5aPXgzjw66OqCSVTFkzsH+Z7+iqcoCMrsK13OQwWQCydmGjEJw3QNFRIgY8VzgC
         661+aFL5ucoZ296X/Wqs7+vJKCLqxMtcwiP6hpTgSYaeycA+cgOweD7ZVD1K47Le7Z80
         /6sFXWRsy6HnR4BCn3w5WhNP2OowEBSJMUK9JBYBuvwJEJd/iFQTA/Y2DvLKJgutMpxM
         oSppXy9Aa/ZqyoPDPpnBeLTjy3yDDhj3pffNY9vBi/X5PRTzx0x7sChCvvHf6gLS14KZ
         624qWVSjhS8EMxgjVSn81Dmr5MVdoDDQuu2BEQO6/UQwge81jW+DkF79XM64VEU9iXKm
         4+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793177779; x=1793782579;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ZZQo695rVLd/9P8OSYiw403iPH4b0i2xMXdXOpikEz8=;
        b=U7BpYEmIu8sj/wIS4siw6DoEKVC7+ifVWPW5uZo/iAynDU6emIANgyvEFV1UCDMaAy
         B0H4C4Hxpgj//8A0DjGrURbQcuN5V+5cbOTTj80pZ8O7RoORzGRUdCFb/pnuWpxHwRvb
         uohMc6kpNeY0eMbnPy0LiX3hd2oMj346NWqXQcXtpS7mnbrbgNEWCVDh78ty+UyAU8pK
         Z4ZJrTv+a5BlbLC2RJfY32wbJC/PC9f2oSYXRfjAfwOMXtPrhJAJze1rriIsGMUg0mcc
         zeHtioZKUmTrhmT1asdGXJ144kN3zK5gjrBiUzt+mGNYuf45d5ANXaQBqcwr/ehkVxRB
         1siA==
X-Forwarded-Encrypted: i=1; AKwUvByjwWzguV/1MdYgYy3AUCFtG7ImbwUs4THRfCAGqeVnaYAoGcf40BARht45wxM1oK6JTcC5dt65XyVsyjVsyw==@lists.infradead.org
X-Gm-Message-State: AFq9FYKaCCX4WWNbOB/nb1oVA+1LwFdvhn+qH91jGHCWXhwdeT4GwTZJ
	AwCnJbeuUBlGa3tCz2bpvUl2wxK2uxxgOniYSnEnQl630d0w5UYbvou4ecK5mqUXqHkaxjfAnhe
	vp2tH73W8eYur4xWeUqjwoqSHEB6G9jo=
X-Gm-Gg: AYBFou1yjnJRqZt8L3aJRtHWXD9K7V9suf5wiA6oA9S/WMcQ/yCe6MifD9kzW6p6bmC
	//s3HhQpE6ddaI5u5+iS0UvKwhLXphUIYG6r6BMwtM6XiWJjhggWrTI+hkyCGt7wQMuh+OFAXnz
	tIo+LsqNafYf08YB8hH9FqIOfJMDQwddFkjALnM7G70hKKqw8pakmHjA400UpIoUUShuG/C6BA/
	seRSh+3o1YQacEX19cUJaF72taa/iNOszgsaXuSNOesN98weLsZUFUvz0zZO9UlyoDx1BhBZLpS
	si5uHs7NNcErj+iap9xMxzmrJ6woSJDbVPk29g583imwl3CY9ay0qKQ/Tup7VNCgTSlNk3m/4zA
	pwjmk6aSjt0yzKMOwW91YtREQSoaIjBCBUL6MFMqZ9ePCYMFBxHPkjaPmRQ==
X-Received: by 2002:a05:6402:a6d2:10b0:6b1:da27:34cb with SMTP id
 4fb4d7f45d1cf-6b49cbce701mr976968a12.2.1793177778791; Wed, 28 Oct 2026
 01:56:18 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <25254818.ouqheUzb2q@diego> <20261021024239.GA3667411-robh@kernel.org>
 <3435698.oiGErgHkdL@diego> <850be915-d42b-427e-a036-907b9364f9d2@collabora.com>
In-Reply-To: <850be915-d42b-427e-a036-907b9364f9d2@collabora.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Wed, 28 Oct 2026 16:56:06 +0800
X-Gm-Features: AclHuK9Sjf7k3U-KBE-ExwCBQXl-_hQw7npOFvb6IJVRf4k6WS3oRrSiOtSkTyI
Message-ID: <CAPwA33J1nud++bYV1JnPJqvA+ocz5H1=DnyJy3HGX4np6JxaEw@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
To: Michael Riesch <michael.riesch@collabora.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Guochun Huang <hero.huang@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_015621_957503_26046ED4 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
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

Hi Michael,

I have just started drafting the code changes and comments following
the discussion above
(including your comments on patches 3 and 5 in v6), so it will
probably take one to two weeks.

Best regards,

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
