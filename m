Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9706ECAC5B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 07:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvWRvTyPJgXc5c1KtXqPQpLv/AZopJE7kd12wbKp/vo=; b=DUmqCXpXKeIeVw
	ZlSnlqbCqIGSDE2QE/C1PgP3RmSxMy25aDL60J82L8DVWLViK7+dHC6VqtqP0lLK4x1f/SrkmeU7H
	h/YghxLX5B3j+8+RcIHIa5NedV2hdFtHGsNXGjhqeLYTK63r6RWcRuG3AbZIfOwhQh2KA3BMfJSmJ
	7IdAbLcx4a6n41YLZySzjfpGIPZ6iqd9FdjHTWdbfhjXkH311Bhsmw2MGD5XEC4wOfR+JjeBpfQp4
	iIBie6fNyaMn+VbyLwNPxefxx+67cL7GDwUevCb0EcBfS6gtDuSO6fhBFZG9YBnb/vfAF8vlPvL4D
	9dur2aClznXENkQzILng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38Ql-00000001dGR-0HSS;
	Mon, 29 Sep 2025 07:36:19 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38Qh-00000001dDz-3Rr7
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Sep 2025 07:36:17 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-b523fb676efso4193865a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 00:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759131375; x=1759736175; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WtpldhRDbRzoGsO+8pMp+y65v40hHUOFZZcRghWlbXo=;
        b=GngNaX0fsdvqgVb9P342j+P+erCZE1tNCRguv7GpdbF5HtDpg0yflwCg3Bhw52h3Fk
         sLaximbG5qsD5gTuv7eM0syS8RQS+vOfolyHbOtXpOoKcHeO0WoujGwBvlab5TKsLYda
         MKzdx9w+I7Dk6Q8JF+vZfhI159riB8EcrcxTGrKGx1hTwOSOl5c56rw7EYTkVUsgR6zd
         8lvsOnl5B1cYLxcgat3ouTRhWgXEXHRoSM0FeI4Drer/O4CLLFpNiLEmm3sRYakeDkGS
         +4y4WVC6ANPCDsYLnfC1zEK0l2iqDsSCq2QBdb9BJeyibNBLbExW3Jx735yq2xtsC7+x
         T2HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759131375; x=1759736175;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WtpldhRDbRzoGsO+8pMp+y65v40hHUOFZZcRghWlbXo=;
        b=RqQvBhE5ZmF9ZUB5ik1QN7qu1P5srFpqO9dTSu/cMYAl8hnkrHAEOusK1vQuyX1YKS
         +Owls0iUoMzNIj2WfHYowmfwp/J1BQvZk0vw0MEGfsUuVqtxKY/c2JzoEBhTT7lbsR42
         KJnZW2MtrP8cMZQSMbgP4lfbIoh7vbZFA/5VFhR2e4PaTUy2HS3bnm+Pt/+1NHFcgzto
         wakuo44Z/fRZ1o7AYoj9MyOjNmkGnl9EINfUsl2mot76tIxW3TuTUQL0yc6oU/wMFZhS
         HT9OXV1a6AQ3uELL/hjUxPqg0C9/I3HOQSIpcl69BjIoMAp5LBugNv1gW3E5QZdrT9F6
         eRPg==
X-Forwarded-Encrypted: i=1; AJvYcCWCvdfZr01mABZ4nx8kTon8mPmlPKbDbKxCMzyxKdej3U6gJDXcczWwIUleAbMNEBqc4laAp7QMfPFV22VLZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqjOllJfeizHk/wv5xjfV8CJ3sYZWPpekARde4HMkTmksJCroq
	fIVECOWW22vs/ConmrNyQALEf+WjTLRv5VoyTlreps6sytix5+QMPfIU
X-Gm-Gg: ASbGncvcPA0PZlDl7hxbnDIvONBBh4170aVO7C3HJd+dAJlRBWBQhBGM/jxyg6+jLxV
	YlA0LjCkRdePAZMbbkTeouma6oC+patmSlrYgIdqpFhXvTxcfxriBgJ6GMjKbT0Q4XsX/L8NQcx
	sNo+OJfRv/YOsF4UvWnZNYfZfpKhIhl4imOU0vlyTIQC5KPWgDRRy62BY0Hm8k1bSagRFX596Cz
	9wBGTW+XInYY2YDhHeDZuoK5N33b9FKIqXTY97JqPc44zGnWOTXwOJ+Ft4/BH27kIg7KoZmhj6m
	j+2sn2RtgCG2KCjGt1RYnNgT45Pm9lNCsZKBPqtcwAsrzpQlBwJTRJw4VPDMyQGf+wOI3jzm7zR
	VwBszHPqOz6xNZbTT/4rfnx7/LinpJMxk4nHkDA7hZgg18ToulxgshUayNO9/Z2PHdA8g6mmBXc
	Um
X-Google-Smtp-Source: AGHT+IEWeCcdaLlQLuxHrfc5zv7vJMgw2RSY5WHEZHUZu8lif8TvLDvdNna1pOwRzpAobj4aitc+pg==
X-Received: by 2002:a17:903:110e:b0:266:64b7:6e38 with SMTP id d9443c01a7336-27ed4a47150mr170404685ad.46.1759131374689;
        Mon, 29 Sep 2025 00:36:14 -0700 (PDT)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27eec33b775sm92844965ad.12.2025.09.29.00.36.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 00:36:14 -0700 (PDT)
Message-ID: <5658a127-617c-464a-9651-5ab114161f84@gmail.com>
Date: Mon, 29 Sep 2025 00:36:13 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Upstreaming Pinephone Pro Patches
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, "Leonardo G. Trombetta"
 <lgtrombetta@gmx.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>
References: <20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com>
 <175856183851.499898.2147562889507523573.robh@kernel.org>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <175856183851.499898.2147562889507523573.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_003615_865527_765A54B3 
X-CRM114-Status: GOOD (  14.62  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,


> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>    pip3 install dtschema --upgrade
>
>
> This patch series was applied (using b4) to base:
>   Base: using specified base-commit f83ec76bf285bea5727f478a68b894f5543ca76e
>
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
>
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com:
>
> arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dtb: light-sensor@48 (sensortek,stk3311): 'leda-supply', 'vdd-supply' do not match any of the regexes: '^pinctrl-[0-9]+$'
> 	from schema $id: http://devicetree.org/schemas/iio/light/stk33xx.yaml#

Thanks, addressed in v4!


Rudraksha


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
