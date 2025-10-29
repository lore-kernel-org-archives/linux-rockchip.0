Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B7FBCCF9EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 18:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixI1fmaDkAjNWBpR0dBsNrcf2q7lfoEbf+5pmgYoVy0=; b=z5rSLgXR3Ac+AD
	dD9oSMvZ67dQesN+iL25jsJcUIdRtGHdva+/k+8fgi5xMt+uO+MQQ2DKb62a39SMB/0aBs/4rfP8Z
	7vKh63x+nf0PZ2DOlOGZucXGpzMBQZiGa63+s2uDeCV4A/4UioBtkPDWTXdK6h4ZJxM8uq8EAc0U5
	60+3bKwnDIfFswFDTbSkI4UdXBPswPg4ZSba6EIq6iPRM5uRwgqfowLsZf205o8KIqzR639srAkHP
	y7BB4OIuebmBIPptdw301ETuCFghpVO5IG341XaOotUDoj3W0trjQ3eumzvK1fakxPC6Sb0jTeXu+
	Wt/WER3Q8fOKS4OCTkaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEATv-00000002KEo-2gsD;
	Wed, 29 Oct 2025 18:01:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEATs-00000002KDb-3RDM
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Oct 2025 18:01:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id d2e1a72fcca58-781ea2cee3fso212795b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Oct 2025 11:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761760868; x=1762365668; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gbssRci/vHGmHOd8+cbdEKN3kF4NLOmkPHSLIdISFlM=;
        b=AS6XP6P/3kzV0PNmFebgOPqQe/8fBLuYNDEtr83Ouv14x4tOBl1/T/iMIawK3mQNCG
         NVT6NIMXnqh1HMZLuSJxisJB2XdHa4Gfx93ybSZSWLlqEf+ZYYDhH5ToIF6X7H3XP+4P
         EZUUN2M2PlJ5qrymzYIOoWzRBcR9Fnj5DMOFXNQaxVa6HN/Uxq7ov1Zz+qYNh0MT9OLX
         k5s1zXFjL6UIIyHjU59fFFfgOYrV5Ph17SGJydV649siW9jTF9uFkrr8GewcRZMcQAu2
         HXvwFh7kJxevlw21wYfn1Bu2cwO6RjVzbsCcavh8NtJ0sIAA1yma9fTF6GqbLs55Bqye
         2QzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761760868; x=1762365668;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gbssRci/vHGmHOd8+cbdEKN3kF4NLOmkPHSLIdISFlM=;
        b=uqrwa2FFAorr16sSMO61ZKoyFTqhnVEBfKwZoTaexXs+UZoMoA0o0sgRqtUDiIn0Zs
         wE2gYQBry+3ByS5NeokrD4xVzT8nUncuVhexPtkFmvUmnpNImczqvVjm7Lr6M2rGJZqx
         i2k+8U4M2W/2xZq4nPmGfP0mwdJwXZApyZK1EFM95To9RGw7VrcQn4mXH8HX2/UFI71v
         Hid7pu7mopfh4wHInZyzoLqsuB4KC754gNhiwQS1QMWmh91MYwX1/fapmwKHizsfnSvj
         vMf/BSih4c+s/28Uh0bpryLBJiulZpjef4SQEfmDZ90wqphQ4I9cNAne7UVWHSGdD4aq
         m/Zg==
X-Forwarded-Encrypted: i=1; AJvYcCXBUD07g155v+PaZWEtmwSqRHGaylJHFFHBxjPIGaVP8tiOP9A9AUXRzQ1PJJR1AehBdP6BfATYbhUn3NW1VA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyrhFk4PK+efj0gBT8ADmiDdbrp06x1knPVwjaNND0chfkYMq3C
	ByoEdXLndVhe76NchU2o7x+qGWj5910N13rAuHRpmHtg8gNjQU1Gy5kj
X-Gm-Gg: ASbGncvR7Lc/BFdq3tI23EKUhlKpWIlF0V1ulDzwcwYU91TCTQm0rPzgx7aTY2s59ZY
	D7tc+2c3gdVDzitzgDPxhva48N40XTI3heTLzt2ugnzWyUnvQr5rUmGXM47ZJZmDDKL0S1IBWg+
	sjhgp5UYlk6BLzXYXarjCfexlCaKc8sD7hT1FMXdeI4r5JH8CujLIxvLeJ6yvukk33o7seHoLsa
	qfkSC1vfuc1RfwW0Qbeb/PNYZdJLnbYAPyT/QgA7A3OQGgx6ncbKmwlmsMexoCoi2pyLBoKIj/H
	LNY9QqHawQY7XCQkpK+aOvwqqrf4iE+haspuDMYiYw5sRbrAeN1YeSTe5EtJddCbruv9dy/lYwx
	6vVxe1t3ELdOv0nd2/kmppxibjlIlzJtafsw7sY+rhhXt5z3RcpXN2X2t2oOdoBuSWP9MH1D8AB
	TWc62sKyCZF9s=
X-Google-Smtp-Source: AGHT+IEK7EeZVIM4eFqBddBlc5fujpHTgJwOvNfrZ2enVKLzN/V/zlDV72wpwI//cQqfhNOcBy1gRA==
X-Received: by 2002:a05:6300:210b:b0:334:992d:ecfa with SMTP id adf61e73a8af0-3465381d8ffmr4700279637.18.1761760867622;
        Wed, 29 Oct 2025 11:01:07 -0700 (PDT)
Received: from ehlo.thunderbird.net ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414032c71sm16133366b3a.25.2025.10.29.11.01.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 11:01:07 -0700 (PDT)
Date: Thu, 30 Oct 2025 02:00:23 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Conor Dooley <conor@kernel.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add NineTripod
User-Agent: K-9 Mail for Android
In-Reply-To: <20251029-reseller-unsavory-5461fe7f6cce@spud>
References: <20251028-semicolon-audacity-dd5bdd418207@spud> <CALj3r0hWzH+pmkbJe7DdqEzwqcpSQdkfPFtv3S7m-H8gZp0A6w@mail.gmail.com> <20251029-reseller-unsavory-5461fe7f6cce@spud>
Message-ID: <8C82BBEB-2302-49F7-A441-600014D7E250@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_110108_887101_0D7887E2 
X-CRM114-Status: GOOD (  29.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On October 30, 2025 1:24:55 AM GMT+08:00, Conor Dooley <conor@kernel.org> wrote:
>On Tue, Oct 28, 2025 at 01:04:32PM -0700, Coia Prant wrote:
>> There won't be any problems at the moment.
>
>Please stop top posting.
>
>> Just out of habit (because when writing code, variable names cannot
>> begin with a number)
>> There may be some misimplemented parsers that cannot do this.
>> 
>> As a practical matter, the branch of openwrt has added support for
>> this board in advance, and openwrt uses the DTS name to initialize
>> some default settings such as LEDs and bridge
>
>That sounds like a problem with the WRT development process. This is a
>trivial change, there could be more disruptive things required to
>satisfy reviewers. Why was it submitted there in advance anyway?
>
>> I'm not sure if he will affect the version that has been released.
>> But maybe it's not a big problem.
>> 
>> If you feel that there is no problem, I can send a new set of patches
>> to fix this problem.
>
>Please do.
>
>> 2025-10-28 19:46 (GMT+00:00), Conor Dooley <conor@kernel.org> said:
>> > On Tue, Oct 28, 2025 at 12:38:10PM -0700, Coia Prant wrote:
>> > At first, it was to avoid problems with the beginning of numbers.
>> > What problems does starting with a number produce?
>> > Given that it is already used by downstream projects, we have retained
>> > this to ensure that users can seamlessly migrate to the mainline
>> > version.
>> > What's the actual impact of changing it from "nine" to "9" for
>> > downstream users? This is a board vendor, probably nothing is even
>> > interacting with the board-level compatible at all programmatically?
>> > Please don't top post.
>> > Thanks.
>> >
>> > 2025-10-28 19:35 (GMT+00:00), Conor Dooley  said:
>> > On Sun, Oct 26, 2025 at 10:36:44PM +0800, Coia Prant wrote:
>> > Add NineTripod to the vendor prefixes.
>> >
>> > Signed-off-by: Coia Prant
>> > ---
>> > Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>> > 1 file changed, 2 insertions(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> > b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> > index f1d188200..37687737e 100644
>> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> > @@ -1124,6 +1124,8 @@ patternProperties:
>> > description: National Instruments
>> > "^nicera,.*":
>> > description: Nippon Ceramic Co., Ltd.
>> > +  "^ninetripod,.*":
>> > Why ninetripod instead of 9tripod? That's what the company uses and in
>> > the marketing fluff for the boards.
>> > +    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
>> > "^nintendo,.*":
>> > description: Nintendo
>> > "^nlt,.*":
>> > --
>> > 2.47.3
>> >

Sorry.

I already switch to a new mali client which support bottom posting.

I will send new patches after test with install PCIe CLK.

Wish have a good day.
:)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
