From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v3 3/6] drm/rockchip/dsi: correct Feedback divider setting
Date: Wed, 25 Oct 2017 18:09:47 -0700
Message-ID: <20171026010946.GA33225@google.com>
References: <1508903463-7254-1-git-send-email-nickey.yang@rock-chips.com>
 <1508903463-7254-3-git-send-email-nickey.yang@rock-chips.com>
 <20171025075719.4tt7lomec5x7guon@art_vandelay>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <20171025075719.4tt7lomec5x7guon@art_vandelay>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Sean Paul <seanpaul@chromium.org>
Cc: mark.rutland@arm.com, hl@rock-chips.com, Philippe CORNU <philippe.cornu@st.com>, zyw@rock-chips.comg, Kristian Kristensen <hoegsberg@gmail.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Nickey Yang <nickey.yang@rock-chips.com>, robh+dt@kernel.org, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

T24gV2VkLCBPY3QgMjUsIDIwMTcgYXQgMDM6NTc6MTlBTSAtMDQwMCwgU2VhbiBQYXVsIHdyb3Rl
Ogo+IEFyY2hpdCBhc2tlZCBhIHF1ZXN0aW9uIGFib3V0IG1vdmluZyB0bwo+IGR3LW1pcGktZHNp
CgpUaGF0IHF1ZXN0aW9uIG1hZGUgbWUgdGhpbmsgdGhvdWdoOiB0aGlzIGFwcHJvYWNoIHNlZW1z
IGJhY2t3YXJkcy4gSXQKc2VlbXMgbGlrZSBzb21lb25lIGRpZCBjb3B5L3Bhc3RlL2ZvcmssIGFu
ZCB0aGVuIHdlJ3JlIGFza2luZyB0aGUKYXV0aG9ycyBvZiB0aGUgb3JpZ2luYWwgZHJpdmVyIHRv
IHVuLWZvcms/IEl0IHNlZW1zIGxpa2UgdGhpcyBzaG91bGQKaGFwcGVuIHRoZSBvdGhlciB3YXkg
YXJvdW5kIC0tIHRob3NlIHRyeWluZyB0byBzdXBwb3J0IGEgbmV3IGluY2FybmF0aW9uCnNob3Vs
ZCBoYXZlIGxvb2tlZCB0byB0cnkgdG8gYWJzdHJhY3QgdGhlIG9yaWdpbmFsIGRyaXZlciBmb3Ig
dGhlaXIKdXNlcyBmaXJzdC4KCklJVUMsIHRoYXQncyBleGFjdGx5IHdoYXQgUm9ja2NoaXAgZGlk
IGZvciBtdWNoIG9mIHRoZWlyIEFuYWxvZ2l4IGVEUApjb2RlIC0tIHRoZXkgcmV3b3JrZWQgdGhl
IEV4eW5vcyBEUCBkcml2ZXIgdG8gc3BsaXQgY29tbW9uIEFuYWxvZ2l4IGNvZGUKZnJvbSBhbnkg
RXh5bm9zLXNwZWNpZmljIGJpdHMuCgpBbmQgYWN0dWFsbHksIHRoZSBjdXJyZW50IHN0dWZmIGlu
CmRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYyBpcyBjb21wbGV0
ZWx5IHVudXNlZC4gSXQKZXhwb3J0cyBzb21lIGZ1bmN0aW9ucywgYnV0IEkgc2VlIG5vIHVzZXJz
IG9mIGl0LiBJcyB0aGF0IGludGVuZGVkPyBJcwpzb21lYm9keSBhbHJlYWR5IHdvcmtpbmcgb24g
cmVmYWN0b3JpbmcgZXhpc3RpbmcgUm9ja2NoaXAgY29kZSB0byB1c2UKdGhpcz8KCkJyaWFuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBt
YWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
